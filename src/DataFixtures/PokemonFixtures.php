<?php

namespace App\DataFixtures;

use App\Entity\Pokemon;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class PokemonFixtures extends Fixture
{
    protected $httpclient;

    public function __construct(HttpClientInterface $client){
        $this->httpclient = $client;
    }

    public function load(ObjectManager $manager): void
    {
        for ($i = 1; $i <= 151; $i++) {
            $response = $this->httpclient->request('GET', 'https://pokeapi.co/api/v2/pokemon/' . $i);
            $responseDescription = $this->httpclient->request('GET', 'https://pokeapi.co/api/v2/pokemon-species/' . $i);
            $pokemon = new Pokemon();

            if (!$response) {
                throw new \Exception('No se obtuvo la respuesta del servidor');
            } elseif (!$responseDescription) {
                throw new \Exception('No se obtuvo la respuesta del servidor');
            } else {
                $dataPokemon = $response->toArray();
                $dataPokemonDescription = $responseDescription->toArray();

                $pokemon->setName(ucfirst($dataPokemon['name'])); //ucfirst pone la primera en mayúscula (uc = uppercase)
                $pokemon->setCode($dataPokemon['id']);
                $pokemon->setImg($dataPokemon['sprites']['other']['official-artwork']['front_default']);
                switch ($dataPokemon['types'][0]['type']['name']) {
                    case 'fire':
                        $pokemon->setType('Fuego');
                        break;
                    case 'water':
                        $pokemon->setType('Agua');
                        break;
                    case 'electric':
                        $pokemon->setType('Eléctrico');
                        break;
                    case 'grass':
                        $pokemon->setType('Planta');
                        break;
                    case 'ice':
                        $pokemon->setType('Hielo');
                        break;
                    case 'fighting':
                        $pokemon->setType('Lucha');
                        break;
                    case 'poison':
                        $pokemon->setType('Veneno');
                        break;
                    case 'ground':
                        $pokemon->setType('Tierra');
                        break;
                    case 'psychic':
                        $pokemon->setType('Psíquico');
                        break;
                    case 'bug':
                        $pokemon->setType('Bicho');
                        break;
                    case 'rock':
                        $pokemon->setType('Roca');
                        break;
                    case 'ghost':
                        $pokemon->setType('Fantasma');
                        break;
                    case 'dragon':
                        $pokemon->setType('Dragón');
                        break;
                    case 'dark':
                        $pokemon->setType('Oscuro');
                        break;
                    case 'steel':
                        $pokemon->setType('Acero');
                        break;
                    case 'fairy':
                        $pokemon->setType('Hada');
                        break;
                    case 'normal':
                        $pokemon->setType('Normal');
                        break;
                    case 'flying':
                        $pokemon->setType('Volador');
                        break;
                    default:
                        $pokemon->setType('Otros');
                        break;
                }
                if($dataPokemonDescription['flavor_text_entries'][26]['language']['name'] === "es"){
                    $pokemon->setDescription($dataPokemonDescription['flavor_text_entries'][26]['flavor_text']);
                } else {
                    $pokemon->setDescription($dataPokemonDescription['flavor_text_entries'][27]['flavor_text']);
                }
                
                $manager->persist($pokemon);
            }
        }
        $manager->flush();
    }
}
