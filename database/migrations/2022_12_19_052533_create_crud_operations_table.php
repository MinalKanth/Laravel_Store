<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crud_operations', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('date_of_birth');
            $table->text('description');
            $table->string('qualification');
            $table->string('email');
            $table->string('mobile');
            $table->string('gender');
            $table->boolean('is_relocate');
            $table->foreignId('country');
            $table->foreignId('state');
            $table->foreignId('city');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('crud_operations');
    }
};
