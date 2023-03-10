<?php

namespace App\Http\Controllers;

use App\Events\WelcomeEmail;
use App\Models\Country;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.index');
    }

    public function usersList(Request $request)
    {
        $users = User::all();
        return view('admin.users_list', compact('users'));
    }

    public function editUsers(Request $request, $id)
    {
        $user = User::find($id);
        if (empty($user)) {
            return back()->with('warning', 'User not found.');
        }
        $countries = Country::all();
        return view('admin.user_edit', compact('user', 'countries'));
    }

    public function registerUsersProfile(Request $request)
    {
        $countries = Country::all();
        return view('admin.users_register', compact('countries'));
    }

    public function registerUsersProfileData(Request $request)
    {
        $this->validate($request, [
            'fname' => 'required|min:2|max:10|string',
            'lname' => 'required|min:2|max:10|string|different:fname',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
            'contact' => 'numeric|nullable',
            'gender' => 'required|in:Male,Female',
            'role_id' => 'required|in:0,1',
            'address' => 'nullable|string|max:100',
            'country' => 'required|exists:countries,id',
            'profile' => 'required|mimes:jpg,jpeg,png',
        ]);
        $requestData = $request->except(['_token', 'regist']);
        $imgName = 'lv_' . rand() . '.' . $request->profile->extension();
        $request->profile->move(public_path('profiles/'), $imgName);
        $requestData['profile'] = $imgName;
        $requestData['password'] = Hash::make($request->password);
        $user = User::create($requestData);
        event(new WelcomeEmail($user));
        if (!empty($user)) {
            $user->update($requestData);
            return redirect()->route('admin_user_list')->with('success', 'User registered Successfully!');
        } else {
            return redirect()->route('admin_user_list')->with('danger', 'Something went wrong.');
        }
    }

    public function updateUsers(Request $request, $id)
    {
        $this->validate($request, [
            'fname' => 'required|min:2|max:10|string',
            'lname' => 'required|min:2|max:10|string|different:fname',
            'email' => 'required|email',
            'contact' => 'numeric|nullable',
            'gender' => 'required|in:Male,Female',
            'role_id' => 'required|in:0,1',
            'address' => 'nullable|string|max:100',
            'country' => 'required|exists:countries,id',
        ]);
        $requestData = $request->except(['_token', '_method', 'update']);
        $user = User::find($id);
        if (!empty($user)) {
            $user->update($requestData);
            return redirect()->route('admin_user_list')->with('success', 'User Data Updated Successfully!');
        } else {
            return redirect()->route('admin_user_list')->with('danger', 'Something went wrong.');
        }
    }

    public function updateUsersProfile(Request $request, $id)
    {
        $this->validate($request, [
            'profile' => 'required|mimes:jpg,jpeg,png',
        ]);
        $requestData = $request->except(['_token', '_method', 'update']);
        $imgName = 'lv_' . rand() . '.' . $request->profile->extension();
        $request->profile->move(public_path('profiles/'), $imgName);
        $requestData['profile'] = $imgName;
        $user = User::find($id);
        if (!empty($user)) {
            $existingProfile = $user->profile;
            $user->update($requestData);
            $profileExists = public_path("profiles/$existingProfile");
            if (file_exists($profileExists)) {
                unlink("profiles/$existingProfile");
            }
            return redirect()->route('admin_user_list')->with('success', 'User Profile Image Updated Successfully!');
        } else {
            return redirect()->route('admin_user_list')->with('danger', 'Something went wrong.');
        }
    }

    public function changeUserStatus(Request $request, $id, $status = 1)
    {
        $user = User::find($id);
        if (!empty($user)) {
            $user->is_active = $status;
            $user->save();
            return redirect()->route('admin_user_list')->with('success', 'User status Updated Successfully!');
        } else {
            return redirect()->route('admin_user_list')->with('danger', 'Something went wrong.');
        }
    }

}
