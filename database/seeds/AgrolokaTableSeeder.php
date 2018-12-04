<?php

use Illuminate\Database\Seeder;

class AgrolokaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Agroloka::class, 30)->create();
    }
}
