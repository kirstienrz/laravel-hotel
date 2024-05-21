<?php

namespace Database\Factories;

use App\Models\RoomType;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 */
class RoomTypeFactory extends Factory
{
    protected $model = RoomType::class;

    public function definition()
    {
        return [
            'title' => $this->faker->title,
            'detail' => $this->faker->paragraph,
            'price' => $this->faker->randomFloat(2, 50, 200), // Adjust the range as needed
            'image' => $this->faker->image,
            // Define other attributes as needed
        ];
    }
}
