<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('roles')->delete();
        
        \DB::table('roles')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'developer',
                'display_name' => 'Developer',
                'created_at' => '2021-10-04 05:49:34',
                'updated_at' => '2021-10-04 05:52:09',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'admin',
                'display_name' => 'Administrator',
                'created_at' => '2021-10-04 05:49:34',
                'updated_at' => '2021-10-04 05:53:01',
            ),
        ));
        
        
    }
}