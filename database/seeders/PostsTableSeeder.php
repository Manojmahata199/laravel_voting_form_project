<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('posts')->delete();
        
        \DB::table('posts')->insert(array (
            0 => 
            array (
                'id' => 1,
                'author_id' => 0,
                'category_id' => NULL,
                'title' => 'Lorem Ipsum Post',
                'seo_title' => NULL,
                'excerpt' => 'This is the excerpt for the Lorem Ipsum Post',
                'body' => '<p>This is the body of the lorem ipsum post</p>',
                'image' => 'posts/post1.jpg',
                'slug' => 'lorem-ipsum-post',
                'meta_description' => 'This is the meta description',
                'meta_keywords' => 'keyword1, keyword2, keyword3',
                'status' => 'PUBLISHED',
                'featured' => 0,
                'created_at' => '2021-10-04 05:50:32',
                'updated_at' => '2021-10-04 05:50:32',
            ),
            1 => 
            array (
                'id' => 2,
                'author_id' => 0,
                'category_id' => NULL,
                'title' => 'My Sample Post',
                'seo_title' => NULL,
                'excerpt' => 'This is the excerpt for the sample Post',
                'body' => '<p>This is the body for the sample post, which includes the body.</p>
<h2>We can use all kinds of format!</h2>
<p>And include a bunch of other stuff.</p>',
                'image' => 'posts/post2.jpg',
                'slug' => 'my-sample-post',
                'meta_description' => 'Meta Description for sample post',
                'meta_keywords' => 'keyword1, keyword2, keyword3',
                'status' => 'PUBLISHED',
                'featured' => 0,
                'created_at' => '2021-10-04 05:50:32',
                'updated_at' => '2021-10-04 05:50:32',
            ),
            2 => 
            array (
                'id' => 3,
                'author_id' => 0,
                'category_id' => NULL,
                'title' => 'Latest Post',
                'seo_title' => NULL,
                'excerpt' => 'This is the excerpt for the latest post',
                'body' => '<p>This is the body for the latest post</p>',
                'image' => 'posts/post3.jpg',
                'slug' => 'latest-post',
                'meta_description' => 'This is the meta description',
                'meta_keywords' => 'keyword1, keyword2, keyword3',
                'status' => 'PUBLISHED',
                'featured' => 0,
                'created_at' => '2021-10-04 05:50:33',
                'updated_at' => '2021-10-04 05:50:33',
            ),
            3 => 
            array (
                'id' => 4,
                'author_id' => 0,
                'category_id' => NULL,
                'title' => 'Yarr Post',
                'seo_title' => NULL,
                'excerpt' => 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.',
                'body' => '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>
<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>
<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>',
                'image' => 'posts/post4.jpg',
                'slug' => 'yarr-post',
                'meta_description' => 'this be a meta descript',
                'meta_keywords' => 'keyword1, keyword2, keyword3',
                'status' => 'PUBLISHED',
                'featured' => 0,
                'created_at' => '2021-10-04 05:50:33',
                'updated_at' => '2021-10-04 05:50:33',
            ),
        ));
        
        
    }
}