<?php

namespace App\DataFixtures;

use App\Entity\Post;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $faker = Factory::create('fr_FR');

        for($i=0;$i<10;$i++){

            $post = new Post();
            $post->setTitle($faker->sentence($nbWords = 3, $VariableWords = true))
                ->setContent($faker->sentence($nbWords = 10, $VariableWords = true))
                ->setAuther($faker->name());
            $manager->persist($post);
        }


        $manager->flush();
    }

}
