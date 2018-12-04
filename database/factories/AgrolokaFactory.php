<?php

use Faker\Generator as Faker;

$factory->define(App\Agroloka::class, function (Faker $faker) {
    return [
        'name'=> $faker->name(25),
        'address'=> $faker->address(50),
        'contact'=> $faker->phoneNumber(15),
        'email'=> $faker->freeEmail(25),
        'note'=>$faker->text(25)
    ];
});
