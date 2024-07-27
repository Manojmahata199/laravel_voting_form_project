<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use DB;

class User extends \TCG\Voyager\Models\User
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public static function vote($votes)
    {
        $insert = [];
        
        if (empty($votes['vote'])) {
            return;
        }

        $data['categories'] = \TCG\Voyager\Models\Category::all();
            foreach($votes['vote'] as $categoryId => $MultiparticipantId ) {
                foreach($MultiparticipantId as $subcategoryId => $participantId ) {
                    $insert[] = [
                        'user_id' => Auth()->user()->id,
                        'category_id' => $categoryId,
                        'subcategory_id' => $subcategoryId,
                        'participant_id' => $participantId
                    ];
                }
            }
        //dd($insert);
        DB::table('user_votes')->insert($insert);
    }

}
