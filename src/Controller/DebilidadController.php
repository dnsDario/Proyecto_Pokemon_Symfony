<?php

namespace App\Controller;

use App\Entity\Debilidad;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DebilidadController extends AbstractController
{
    #[Route("/debilidad/{id}")]
    public function showDebilidad(EntityManagerInterface $doctrine, $id){
        $repository = $doctrine->getRepository(Debilidad::class);
        $debilidad = $repository->find($id);
        return $this->render(
            'debilidad/showDebilidad.html.twig',
            [
                'debilidad' => $debilidad,
            ]
        );
    }
    #[Route("/crear/nuevaDebilidad")]
    public function insertDebilidad(EntityManagerInterface $doctrine)
    {
        $debilidad1 = new Debilidad();
        $debilidad1->setTypes(['Fuego']);
        $doctrine->persist($debilidad1);

        $debilidad2 = new Debilidad();
        $debilidad2->setTypes(['Agua']);
        $doctrine->persist($debilidad2);

        $debilidad3 = new Debilidad();
        $debilidad3->setTypes(['Planta']);
        $doctrine->persist($debilidad3);

        $debilidad4 = new Debilidad();
        $debilidad4->setTypes(['Eléctrico']);
        $doctrine->persist($debilidad4);

        $debilidad5 = new Debilidad();
        $debilidad5->setTypes(['Tierra']);
        $doctrine->persist($debilidad5);

        $debilidad6 = new Debilidad();
        $debilidad6->setTypes(['Volador']);
        $doctrine->persist($debilidad6);

        $debilidad7 = new Debilidad();
        $debilidad7->setTypes(['Normal']);
        $doctrine->persist($debilidad7);

        $debilidad8 = new Debilidad();
        $debilidad8->setTypes(['Bicho']);
        $doctrine->persist($debilidad8);

        $debilidad9 = new Debilidad();
        $debilidad9->setTypes(['Veneno']);
        $doctrine->persist($debilidad9);

        $debilidad10 = new Debilidad();
        $debilidad10->setTypes(['Psíquico']);
        $doctrine->persist($debilidad10);

        $debilidad11 = new Debilidad();
        $debilidad11->setTypes(['Dragón']);
        $doctrine->persist($debilidad11);

        $debilidad12 = new Debilidad();
        $debilidad12->setTypes(['Fantasma']);
        $doctrine->persist($debilidad12);

        $debilidad13 = new Debilidad();
        $debilidad13->setTypes(['Roca']);
        $doctrine->persist($debilidad13);

        $debilidad14 = new Debilidad();
        $debilidad14->setTypes(['Hielo']);
        $doctrine->persist($debilidad14);



        $doctrine->flush(); /* Uno para todo */

        return new Response('Debilidades creadas correctamente');
    }
}
