<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [];
        $faker = Faker\Factory::create();
        for($i=0;$i<8;$i++){
        $name = $faker->unique()->word();
        $name = str_replace('.', '', $name);
        $slug = str_replace(' ', '-', strtolower($name));
        $categories[$i] = [
        'name' => $name,
        'slug' => $slug,
        'image' => 'unavailable.jpg',
        'status' => 'PUBLISH',
        ];
        }
        DB::table('categories')->insert($categories);
    }
}
