<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blogs', function (Blueprint $table)
        {
            $table->increments('id');
            $table->string('title');
            $table->text('sub_title')->nullable();
            $table->string('image');
            $table->text('video')->nullable();
            $table->string('url')->unique();
            $table->text('content');
            $table->string('status', 11)->default('active')->comment('active or inactive');
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
        Schema::dropIfExists('blogs');
    }
}
