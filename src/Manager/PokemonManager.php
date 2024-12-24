<?php

namespace App\Manager;

use Symfony\Component\HttpFoundation\File\UploadedFile;

class PokemonManager
{
    public function upload(UploadedFile $file, $targetPath){

        $fileName = uniqid().'.'.$file->guessExtension(); // genera un nombre único para el archivo (instalar para esto composer require symfony/mime)

        try {
            $file->move($targetPath, $fileName); // primer argumento es el targetPath(carpeta) donde se guardará el archivo, el segundo argumento es el nombre del archivo
        } catch (\Exception $e) {
            throw new \Exception('Error al subir el archivo');
        }

        return $fileName;
    }
}