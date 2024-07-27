<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDbAparajitaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('participants', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('category_1_id')->nullable();
            $table->string('category_1')->nullable();
            $table->unsignedInteger('subcategory_1_id')->nullable();
            $table->string('subcategory_1')->nullable();
            $table->unsignedInteger('category_2_id')->nullable();
            $table->string('category_2')->nullable();
            $table->unsignedInteger('subcategory_2_id')->nullable();
            $table->string('subcategory_2')->nullable();
            $table->string('name')->nullable();
            $table->date('birthdate')->nullable();
            $table->string('mobile_number')->nullable();
            $table->string('email')->nullable();
            $table->text('address')->nullable();
            $table->text('facebook_link')->nullable();
            $table->text('insta_link')->nullable();
            $table->text('social_media')->nullable();
            $table->text('family_background')->nullable();
            $table->text('organization')->nullable();
            $table->text('work_profile')->nullable();
            $table->string('experience')->nullable();
            $table->date('experience_date')->nullable();
            $table->text('org_address')->nullable();
            $table->text('org_city')->nullable();
            $table->text('org_state')->nullable();
            $table->string('org_pincode')->nullable();
            $table->string('org_contact_number')->nullable();
            $table->string('org_email')->nullable();
            $table->string('website')->nullable();
            $table->string('org_fb_link')->nullable();
            $table->string('org_insta_link')->nullable();
            $table->text('digital_presence')->nullable();
            $table->mediumText('response_1')->nullable();
            $table->mediumText('response_2')->nullable();
            $table->mediumText('response_3')->nullable();
            $table->mediumText('response_4')->nullable();
            $table->mediumText('response_5')->nullable();
            $table->text('file_photo')->nullable();
            $table->text('file_video')->nullable();
            $table->text('file_awards')->nullable();
            $table->text('file_social')->nullable();
            //$table->text('file_experience')->nullable();
            $table->text('file_support')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('subcategories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
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
        Schema::dropIfExists('subcategories');

        Schema::dropIfExists('participants');
    }
}
