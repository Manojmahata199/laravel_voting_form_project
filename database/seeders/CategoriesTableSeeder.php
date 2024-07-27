<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categories')->delete();
        
        \DB::table('categories')->insert(array (
            0 => 
            array (
                'id' => 1,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Academia & Education',
                'slug' => 'academia-education',
                'created_at' => '2021-10-04 05:50:31',
                'updated_at' => '2021-10-04 06:26:16',
            ),
            1 => 
            array (
                'id' => 2,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Health & Wellness',
                'slug' => 'health-wellness',
                'created_at' => '2021-10-04 05:50:31',
                'updated_at' => '2021-10-04 06:26:37',
            ),
            2 => 
            array (
                'id' => 3,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Enterprise',
                'slug' => 'enterprise',
                'created_at' => '2021-10-04 06:26:50',
                'updated_at' => '2021-10-04 06:26:50',
            ),
            3 => 
            array (
                'id' => 4,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Social Service',
                'slug' => 'social-service',
                'created_at' => '2021-10-04 06:27:07',
                'updated_at' => '2021-10-04 06:27:07',
            ),
            4 => 
            array (
                'id' => 5,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Sports',
                'slug' => 'sports',
                'created_at' => '2021-10-04 06:27:16',
                'updated_at' => '2021-10-04 06:27:16',
            ),
            5 => 
            array (
                'id' => 6,
                'parent_id' => NULL,
                'order' => 1,
            'name' => 'Creative Arts (Art & Photography)',
                'slug' => 'creative-arts',
                'created_at' => '2021-10-04 06:27:49',
                'updated_at' => '2021-10-04 06:27:49',
            ),
            6 => 
            array (
                'id' => 7,
                'parent_id' => NULL,
                'order' => 1,
            'name' => 'Performing Arts (Music, Dance & Theatre)',
                'slug' => 'performing-arts',
                'created_at' => '2021-10-04 06:28:30',
                'updated_at' => '2021-10-04 06:28:30',
            ),
            7 => 
            array (
                'id' => 8,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Literary',
                'slug' => 'literary',
                'created_at' => '2021-10-04 06:28:45',
                'updated_at' => '2021-10-04 06:28:45',
            ),
        ));
        
        
    }
}