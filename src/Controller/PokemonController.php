<?php

namespace App\Controller;

use App\Entity\Pokemon;
use App\Form\CreateEditPokemonType;
use App\Manager\PokemonManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class PokemonController extends AbstractController
{
    #[Route("/pokemon/{id}", name: "pokemon_show")]
    public function showPokemon(EntityManagerInterface $doctrine, $id){
        $repository = $doctrine->getRepository(Pokemon::class);
        $pokemon = $repository->find($id);

        $imageCards = [
            'Fuego' => 'https://www.mundodeportivo.com/alfabeta/hero/2022/01/pokeball-fuego.jpg?width=768&aspect_ratio=16:9&format=nowebp',
            'Planta' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5XQJr5FTVhlpSgCZ-nimmhEKzSPlPjKD_Kw&s',
            'Eléctrico' => 'https://img.freepik.com/fotos-premium/relampago-amarillo-nubes-fondo_948935-1992.jpg',
            'Agua' => 'https://pm1.aminoapps.com/6446/555aabc8167e2f24bfdcf9c6d037a68583e77659_00.jpg',
            'Normal' => 'https://images.wikidexcdn.net/mwuploads/wikidex/thumb/9/95/latest/20131210194633/EP813_Campo_de_batalla_del_Gimnasio_Luminalia.png/250px-EP813_Campo_de_batalla_del_Gimnasio_Luminalia.png',
            'Tierra' => 'https://i.pinimg.com/originals/49/d9/07/49d907a8cba89b0f6911b20b49c43e61.png',
            'Veneno' => 'https://st4.depositphotos.com/9904426/21385/i/450/depositphotos_213851378-stock-photo-antique-vintage-glass-bottle-dark.jpg',
            'Bicho' => 'https://img.freepik.com/fotos-premium/suelo-bosque-cubierto-musgo-tocon-arbol-primer-plano-suelo-bosque-verde_355971-483.jpg',
            'Roca' => 'https://img.freepik.com/fotos-premium/paisaje-rocoso-al-atardecer-que-muestra-formaciones-naturales-e-iluminacion-calida_107062-45535.jpg',
            'Lucha' => 'https://i1.sndcdn.com/artworks-000276434912-dfbggz-t500x500.jpg',
            'Psíquico' => 'https://img.freepik.com/free-vector/psychedelic-optical-illusion-background_23-2148562189.jpg',
            'Fantasma' => 'https://st.depositphotos.com/1034582/4053/v/450/depositphotos_40539573-stock-illustration-spooky-graveyard.jpg',
            'Dragón' => 'https://img.freepik.com/free-photo/fantastic-dragon-eye-close-up_23-2151445834.jpg',
            'Hada' => 'https://i.pinimg.com/originals/27/d4/6f/27d46fb57655efdc84458055920db201.jpg',
            'Hielo' => 'https://e1.pxfuel.com/desktop-wallpaper/368/539/desktop-wallpaper-the-beauty-of-ice-ice-pokemon.jpg',
        ];
        return $this->render(
            'pokemons/showPokemon.html.twig',
            [
                'imageCards' => $imageCards,
                'pokemon' => $pokemon,
            ]
        );
    }
    #[Route("crear/pokemon", name: "newPokemon")]
    public function newPokemon(EntityManagerInterface $doctrine, Request $request, PokemonManager $pokemonManager){

        $form = $this->createForm(CreateEditPokemonType::class); //creamos el formulario según el modelo que hemos creado con el make:form
        $form->handleRequest($request); //procesa la petición

        if ($form->isSubmitted() && $form->isValid()) { //¿Formulario enviado y válido?
            $pokemon = $form->getData(); //obtenemos los datos del formulario
            $doctrine->persist($pokemon); // dejamos pendiente de guardar el pokemon

            //Al haber puesto mapped => false en el formulario, y el atributo ser de tipo string, el archivo de Img no se guarda en la base de datos, la guardamos en nuestro servidor, y en el atributo ponemos la ruta para acceder a la imagen.
            $pokemonImage = $form->get('Img')->getData(); //datos de archivo subido, en este caso la imagen del pokemon
            if ($pokemonImage) {
                $imageFilename = $pokemonManager->upload(
                    $pokemonImage,
                    $this->getParameter('images_directory')); //subir imagen a la carpeta public/images, con un parámetro ('kernel.project_dir').'/public/images') con el que sabe en que directorio está instalado symfony (añadido en config/services.yaml)
            }
            $pokemon->setImg("/images/".$imageFilename); //poner la imagen en la carpeta images

            $doctrine->flush();
            $this->addFlash(
                'success',
                'Pokemon creado correctamente'
            ); // Crea un mensaje (1er argumento, palabra clave, 2do argumento, contenido del mensaje)

            return $this->redirectToRoute('pokemon_show', ['id' => $pokemon->getId()]);
        }
        return $this->render(
            'pokemons/newPokemon.html.twig',
            [
                'pokemonForm' => $form,
            ]
        );
    }
    #[Route("edit/pokemon/{id}", name: "editPokemon")]
    public function editPokemon(EntityManagerInterface $doctrine, Request $request, $id){

        $pokemon = $doctrine->getRepository(Pokemon::class)->find($id);  //Busca el Pokemon con el ID proporcionado
        $form = $this->createForm(CreateEditPokemonType::class, $pokemon); //Crea el formulario con el Pokemon como dato
        $form->handleRequest($request); //Procesa la petición

        if ($form->isSubmitted() && $form->isValid()) { 
            $pokemon = $form->getData();
            $doctrine->persist($pokemon);
            $doctrine->flush();
            $this->addFlash('success', 'Pokemon editado correctamente'); // Crea un mensaje (1er argumento, palabra clave, 2do argumento, contenido del mensaje)
            return $this->redirectToRoute('pokemon_show', ['id' => $pokemon->getId()]);
        }

        

        return $this->render(
            'pokemons/newPokemon.html.twig',
            [
                'pokemonImg' => $pokemon->getImg(),
                'pokemonForm' => $form,
            ]
        );
    }
    #[Route("/borrar/pokemon/{id}", name: "deletePokemon")]
    public function deletePokemon(EntityManagerInterface $doctrine, $id){
        $repository = $doctrine->getRepository(Pokemon::class);
        $pokemon = $repository->find($id);
        $doctrine->remove($pokemon); // queda pendiente de borrado
        $doctrine->flush(); // borra el pokemon de la BBDD
        $this->addFlash('success', 'Pokemon borrado correctamente');
        return $this->redirectToRoute('list_pokemons');
    }
    #[Route("/listPokemons", name: "list_pokemons")]
    public function showListPokemons(EntityManagerInterface $doctrine){
        $repository = $doctrine->getRepository(Pokemon::class);
        $pokemons = $repository->findAll();
        $imageCards = [
            'Fuego' => 'https://www.mundodeportivo.com/alfabeta/hero/2022/01/pokeball-fuego.jpg?width=768&aspect_ratio=16:9&format=nowebp',
            'Planta' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5XQJr5FTVhlpSgCZ-nimmhEKzSPlPjKD_Kw&s',
            'Eléctrico' => 'https://img.freepik.com/fotos-premium/relampago-amarillo-nubes-fondo_948935-1992.jpg',
            'Agua' => 'https://pm1.aminoapps.com/6446/555aabc8167e2f24bfdcf9c6d037a68583e77659_00.jpg',
            'Normal' => 'https://images.wikidexcdn.net/mwuploads/wikidex/thumb/9/95/latest/20131210194633/EP813_Campo_de_batalla_del_Gimnasio_Luminalia.png/250px-EP813_Campo_de_batalla_del_Gimnasio_Luminalia.png',
            'Tierra' => 'https://i.pinimg.com/originals/49/d9/07/49d907a8cba89b0f6911b20b49c43e61.png',
            'Veneno' => 'https://st4.depositphotos.com/9904426/21385/i/450/depositphotos_213851378-stock-photo-antique-vintage-glass-bottle-dark.jpg',
            'Bicho' => 'https://img.freepik.com/fotos-premium/suelo-bosque-cubierto-musgo-tocon-arbol-primer-plano-suelo-bosque-verde_355971-483.jpg',
            'Roca' => 'https://img.freepik.com/fotos-premium/paisaje-rocoso-al-atardecer-que-muestra-formaciones-naturales-e-iluminacion-calida_107062-45535.jpg',
            'Lucha' => 'https://i1.sndcdn.com/artworks-000276434912-dfbggz-t500x500.jpg',
            'Psíquico' => 'https://img.freepik.com/free-vector/psychedelic-optical-illusion-background_23-2148562189.jpg',
            'Fantasma' => 'https://st.depositphotos.com/1034582/4053/v/450/depositphotos_40539573-stock-illustration-spooky-graveyard.jpg',
            'Dragón' => 'https://img.freepik.com/free-photo/fantastic-dragon-eye-close-up_23-2151445834.jpg',
            'Hada' => 'https://i.pinimg.com/originals/27/d4/6f/27d46fb57655efdc84458055920db201.jpg',
            'Hielo' => 'https://e1.pxfuel.com/desktop-wallpaper/368/539/desktop-wallpaper-the-beauty-of-ice-ice-pokemon.jpg',
        ];
        return $this->render(
            'pokemons/showListPokemons.html.twig',
            [  
                'imageCards' => $imageCards,
                'pokemons' => $pokemons,
            ]
        );
    }

    /* #[Route("/agregarDebilidades/{idPokemon1}/{idPokemon2}/{idPokemon3}/{idPokemon4}/{idPokemon5}/{idPokemon6}/{idPokemon7}/{idPokemon8}/{idDebilidad}", name: "agregar_debilidades")]
    public function agregarDebilidades(EntityManagerInterface $doctrine, $idPokemon1,$idPokemon2,$idPokemon3,$idPokemon4,$idPokemon5,$idPokemon6,$idPokemon7,$idPokemon8,$idDebilidad)
    {
        $idsPokemons = [$idPokemon1,$idPokemon2,$idPokemon3,$idPokemon4,$idPokemon5,$idPokemon6,$idPokemon7,$idPokemon8];
        $debilidad = $doctrine->getRepository(Debilidad::class)->find($idDebilidad);

        if (!$debilidad) {
            throw new \Exception('No se encontró la debilidad');
        }

        foreach ($idsPokemons as $idPokemon) {
            $pokemon = $doctrine->getRepository(Pokemon::class)->find($idPokemon);
            if (!$pokemon) {
                throw new \Exception('No se encontró el Pokémon con ID ' . $idPokemon);
            }
            $pokemon->addDebilidade($debilidad);
            $doctrine->persist($pokemon);
            
        }
        $doctrine->flush();

        return new Response('Debilidades agregadas correctamente');
    } */
    
    
}
