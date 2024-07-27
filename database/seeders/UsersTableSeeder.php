<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_id' => 1,
                'name' => 'Dev',
                'email' => 'dev@dev.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$YM.vYl5Bo3cBiVPctZBZMermKIsDtVwCto8KWHIU2CvXYcpQkPfGy',
                'remember_token' => '9BbqBHRFn89MLOxvfsnFQt5HZTloBOG7jn21RBRzqMlVh1oZOUwW1esgEaQW',
                'settings' => '{"locale":"en"}',
                'created_at' => '2021-10-04 05:50:31',
                'updated_at' => '2021-10-04 05:53:42',
            ),
            1 => 
            array (
                'id' => 2,
                'role_id' => 2,
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$uVuRiv8DBRDK1m55mrP1cOu8oyDR.EVmv6BwBOu84JYW1wP5Mxrq.',
                'remember_token' => NULL,
                'settings' => '{"locale":"en"}',
                'created_at' => '2021-10-04 05:54:10',
                'updated_at' => '2021-10-04 05:54:10',
            ),
        ));
        
        
    }
}