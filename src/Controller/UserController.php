<?php

namespace App\Controller;

use App\Form\UserType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    #[Route("registrar/usuario", name: "newUser")]
    public function newUser(EntityManagerInterface $doctrine, Request $request, UserPasswordHasherInterface $hash){
        $form = $this->createForm(UserType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $user = $form->getData();
            $oldPassword = $user->getPassword();
            $cryptedPassword = $hash->hashPassword($user, $oldPassword); //1er argumento, objeto de usuario, 2do argumento, contraseña
            $user->setPassword($cryptedPassword); //cambia la contraseña del usuario mediante el método de la entidad User
            $doctrine->persist($user);
            $doctrine->flush();
            $this->addFlash('success', 'Usuario creado correctamente'); // Crea un mensaje (1er argumento, palabra clave, 2do argumento, contenido del mensaje)
            return $this->redirectToRoute('app_login'); //redirecciona al login
        }
        return $this->render(
            'users/newUser.html.twig',
            [
                'userForm' => $form,
            ]
        );
    }

    #[Route("registrar/admin", name: "newAdmin")]
    public function newAdmin(EntityManagerInterface $doctrine, Request $request, UserPasswordHasherInterface $hash){
        $form = $this->createForm(UserType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $user = $form->getData();
            $oldPassword = $user->getPassword();
            $cryptedPassword = $hash->hashPassword($user, $oldPassword); //1er argumento, objeto de usuario, 2do argumento, contraseña
            $user->setPassword($cryptedPassword); //cambia la contraseña del usuario mediante el método de la entidad User
            $user->setRoles(['ROLE_ADMIN']); //agrega el rol de admin al usuario
            $doctrine->persist($user);
            $doctrine->flush();
            $this->addFlash('success', 'Usuario creado correctamente'); // Crea un mensaje (1er argumento, palabra clave, 2do argumento, contenido del mensaje)
            return $this->redirectToRoute('list_pokemons'); //redirecciona a lista pokemons ya que ya estamos loggueados como admin
        }
        return $this->render(
            'users/newUser.html.twig',
            [
                'userForm' => $form,
            ]
        );
    }
}