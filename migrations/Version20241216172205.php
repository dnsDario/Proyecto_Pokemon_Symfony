<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20241216172205 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE pokemon_debilidad (pokemon_id INT NOT NULL, debilidad_id INT NOT NULL, INDEX IDX_1EBD3D3F2FE71C3E (pokemon_id), INDEX IDX_1EBD3D3FD7C99BD5 (debilidad_id), PRIMARY KEY(pokemon_id, debilidad_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE pokemon_debilidad ADD CONSTRAINT FK_1EBD3D3F2FE71C3E FOREIGN KEY (pokemon_id) REFERENCES pokemon (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE pokemon_debilidad ADD CONSTRAINT FK_1EBD3D3FD7C99BD5 FOREIGN KEY (debilidad_id) REFERENCES debilidad (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE debilidad_pokemon DROP FOREIGN KEY FK_CF8A9471D7C99BD5');
        $this->addSql('ALTER TABLE debilidad_pokemon DROP FOREIGN KEY FK_CF8A94712FE71C3E');
        $this->addSql('DROP TABLE debilidad_pokemon');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE debilidad_pokemon (debilidad_id INT NOT NULL, pokemon_id INT NOT NULL, INDEX IDX_CF8A9471D7C99BD5 (debilidad_id), INDEX IDX_CF8A94712FE71C3E (pokemon_id), PRIMARY KEY(debilidad_id, pokemon_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE debilidad_pokemon ADD CONSTRAINT FK_CF8A9471D7C99BD5 FOREIGN KEY (debilidad_id) REFERENCES debilidad (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE debilidad_pokemon ADD CONSTRAINT FK_CF8A94712FE71C3E FOREIGN KEY (pokemon_id) REFERENCES pokemon (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE pokemon_debilidad DROP FOREIGN KEY FK_1EBD3D3F2FE71C3E');
        $this->addSql('ALTER TABLE pokemon_debilidad DROP FOREIGN KEY FK_1EBD3D3FD7C99BD5');
        $this->addSql('DROP TABLE pokemon_debilidad');
    }
}
