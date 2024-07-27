<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SubcategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('subcategories')->delete();
        
        \DB::table('subcategories')->insert(array (
            0 => 
            array (
                'id' => 1,
            'name' => 'You Shine (5 to 8 years of experience)',
                'created_at' => '2021-10-05 05:38:51',
                'updated_at' => '2021-10-05 05:38:51',
            ),
            1 => 
            array (
                'id' => 2,
            'name' => 'You Inspire (More than 10 years of experience)',
                'created_at' => '2021-10-05 05:39:03',
                'updated_at' => '2021-10-05 05:39:03',
            ),
        ));
        
        
    }
}