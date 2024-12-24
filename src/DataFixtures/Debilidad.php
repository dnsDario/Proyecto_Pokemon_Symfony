<?php

namespace App\DataFixtures;

use App\Entity\Debilidad as EntityDebilidad;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class Debilidad extends Fixture
{
    protected $httpclient;
    public function __construct(protected HttpClientInterface $client)
    {
        $this->client = $client;
    }
    public function load(ObjectManager $manager): void
    {   

        for ($i = 1; $i <= 18; $i++) {
            $response = $this->client->request('GET', 'https://pokeapi.co/api/v2/type/'.$i);
            $dataType = $response->toArray();
            $debilidad = new EntityDebilidad();
            switch ($dataType["name"]) {
                case 'fire':
                    $debilidad->setTypes(['Fuego']);
                    break;
                case 'water':
                    $debilidad->setTypes(['Agua']);
                    break;
                case 'electric':
                    $debilidad->setTypes(['Eléctrico']);
                    break;
                case 'grass':
                    $debilidad->setTypes(['Planta']);
                    break;
                case 'ice':
                    $debilidad->setTypes(['Hielo']);
                    break;
                case 'fighting':
                    $debilidad->setTypes(['Lucha']);
                    break;
                case 'poison':
                    $debilidad->setTypes(['Veneno']);
                    break;
                case 'ground':
                    $debilidad->setTypes(['Tierra']);
                    break;
                case 'psychic':
                    $debilidad->setTypes(['Psíquico']);
                    break;
                case 'bug':
                    $debilidad->setTypes(['Bicho']);
                    break;
                case 'rock':
                    $debilidad->setTypes(['Roca']);
                    break;
                case 'ghost':
                    $debilidad->setTypes(['Fantasma']);
                    break;
                case 'dragon':
                    $debilidad->setTypes(['Dragón']);
                    break;
                case 'dark':
                    $debilidad->setTypes(['Oscuro']);
                    break;
                case 'steel':
                    $debilidad->setTypes(['Acero']);
                    break;
                case 'fairy':
                    $debilidad->setTypes(['Hada']);
                    break;
                case 'normal':
                    $debilidad->setTypes(['Normal']);
                    break;
                case 'flying':
                    $debilidad->setTypes(['Volador']);
                    break;
                default:
                    $debilidad->setTypes(['Otros']);
                    break;                   
        }
        $manager->persist($debilidad);
        $manager->flush();
    }
}
}