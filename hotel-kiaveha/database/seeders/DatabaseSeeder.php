<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        // $faker = Faker::create();

        // for ($i = 0; $i < 200; $i++) {
        //     DB::table('room_types')->insert([
        //         'title' => $faker->sentence($nbWords = 6, $variableNbWords = true),
        //         'detail' => $faker->paragraph($nbSentences = 2, $variableNbSentences = true),
        //         'price' => $faker->numberBetween($min = 100, $max = 1000), // Generate a random price between 100 and 1000
        //     ]);
        // }

}
}
