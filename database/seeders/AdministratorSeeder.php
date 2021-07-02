<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdministratorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $administrator = new \App\Models\User;
        $administrator->username = "administrator";
        $administrator->name = "Site Administrator";
        $administrator->email = "administrator@kshop.test";
        $administrator->roles = json_encode(["ADMIN"]);
        $administrator->password = Hash::make("kshop");
        $administrator->avatar = "saat-ini-tidak-ada-file.png";
        $administrator->address = "Semarang, Jawa Tengah";

        $administrator->save();

        $this->command->info("User Admin Berhasil di insert !");
    }
}
