<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMyMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('my_members', function (Blueprint $table) {
            $table->id('members_id');
            $table->string('member_name',100);
            $table->string('email',50);
            $table->string('contact',15);
            $table->unsignedBigInteger('group_id');
            $table->foreign('group_id')->references('group_id')->on('groups'); // making foreign key in table of group key
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
        Schema::dropIfExists('my_members');
    }
}
