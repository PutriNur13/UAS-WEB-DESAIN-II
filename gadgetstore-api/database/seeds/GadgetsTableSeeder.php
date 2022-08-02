<?php

use Illuminate\Database\Seeder;

class GadgetsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $gadgets = [];
        $faker = Faker\Factory::create();
        for($i=0;$i<25;$i++){
        $name = $faker->sentence(mt_rand(3, 6));
        $name = str_replace('.', '', $name);
        $slug = str_replace(' ', '-', strtolower($name));
        $gadgets[$i] = [
        'name' => $name,
        'slug' => $slug,
        'description' => $faker->text(255),
        'image' => 'unavailable.jpg',
        'price' => mt_rand(1, 10) * 50000,
        'weight' => 0.5,
        'stock' => 10,
        'status' => 'PUBLISH',
        'created_at' => Carbon\Carbon::now(),
        ];
        }
        DB::table('gadgets')->insert($gadgets);

    }
}
