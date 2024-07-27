<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;


class UserVote extends Model
{

    public $timestamps = false;

    /* public function getUserIdAttribute($value) {
        $name = \App\Models\User::findOrFail($value)->name;
        return $name;
    } */
    

    // public function getCategoryIdAttribute($value) {
    //     return \TCG\Voyager\Models\Category::findOrFail($value)->name;
    // }

    // public function getSubcategoryIdAttribute($value) {
    //     return \App\Subcategory::findOrFail($value)->display_name;
    // }

    // public function getParticipantIdAttribute($value) {
    //     return \App\Participant::findOrFail($value)->name;
    // }
}
