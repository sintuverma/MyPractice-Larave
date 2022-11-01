<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Customer;
use Faker\Factory as Faker;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        // run this command for make a seeder php artisan make:seeder CustomerSeeder
        //we are repeat fake entry in database by loop we can use enhance the loop value for entry in customer table and run the command php artisan db:seed in cmd or terminal

        for($i=0; $i<=10;$i++){
        $customer = new Customer;//creating customers model class object



         $customer->user_name= $faker->name;

         $customer->email= $faker->email;
         $customer->gender= "M";
         $customer->address= $faker->address;
         $customer->state= $faker->state;
         $customer->country= $faker->country;

         $customer->dob= $faker->date;
         $customer->password=$faker->password;
         $customer->save();// insert data in table by save method
    }
}
}
