<?php

namespace App\Form;

use App\Entity\Debilidad;
use App\Entity\Pokemon;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CreateEditPokemonType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, ['label' => 'Nombre', 'attr' => ['placeholder' => '¿Cómo se llama el Pokémon que deseas crear?']])
            ->add('type', TextType::class, ['label' => 'Tipo', 'attr' => ['placeholder' => '¿Que tipo del Pokémon es?']])
            ->add('code', TextType::class, ['label' => 'Nº', 'attr' => ['placeholder' => 'Introduzca el código del Pokémon']])
            ->add('description', TextType::class, [
                'label' => 'Descripción del Pokémon',
                'attr' => ['placeholder' => 'Descripción del Pokémon']])
            ->add('Img', FileType::class, [
                'label' => 'Imagen del Pokémon',
                'attr' => ['placeholder' => 'Imagen del Pokémon'],
                'required' => false,
                'mapped' => false]) //false significa que no se guarda en la base de datos
            ->add('debilidades', EntityType::class, [
                'class' => Debilidad::class,
                'choice_label' => 'types[0]',
                'required' => false,
                'multiple' => true,
                'expanded' => true, //cambia el select por checkboxes para la selección múltiple
            ])
            ->add('Guardar', SubmitType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Pokemon::class,
        ]);
    }
}
