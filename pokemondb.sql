-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3400
-- Tiempo de generación: 06-01-2025 a las 08:29:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemondb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `debilidad`
--

CREATE TABLE `debilidad` (
  `id` int(11) NOT NULL,
  `types` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `debilidad`
--

INSERT INTO `debilidad` (`id`, `types`) VALUES
(1, 'Lucha'),
(2, 'Volador'),
(3, 'Veneno'),
(4, 'Tierra'),
(5, 'Roca'),
(6, 'Bicho'),
(7, 'Fantasma'),
(8, 'Acero'),
(9, 'Fuego'),
(10, 'Agua'),
(11, 'Planta'),
(12, 'Eléctrico'),
(13, 'Psíquico'),
(14, 'Hielo'),
(15, 'Dragón'),
(16, 'Oscuro'),
(17, 'Hada'),
(18, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20241211120531', '2024-12-15 16:49:22', 305),
('DoctrineMigrations\\Version20241211164932', '2024-12-15 16:49:23', 12),
('DoctrineMigrations\\Version20241212085254', '2024-12-15 16:49:23', 310),
('DoctrineMigrations\\Version20241215174817', '2024-12-15 18:48:40', 326),
('DoctrineMigrations\\Version20241216164745', '2024-12-16 17:47:58', 281),
('DoctrineMigrations\\Version20241216172205', '2024-12-16 18:22:16', 319);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `code` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `type`, `code`, `description`, `img`) VALUES
(1475, 'Bulbasaur', 'Planta', 1, 'Una rara semilla le fue plantada en el lomo al nacer.La planta brota y crece con este Pokémon.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'),
(1476, 'Ivysaur', 'Planta', 2, 'Este Pokémon tiene un bulbo en el lomo. Dicen que,al absorber nutrientes, el bulbo se transforma en unaflor grande.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png'),
(1477, 'Venusaur', 'Planta', 3, 'Llena su cuerpo de energía con los rayos solares quecaptan los anchos pétalos de su flor.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png'),
(1478, 'Charmander', 'Fuego', 4, 'La llama de su cola indica la fuerza vital deCharmander. Será brillante si está sano.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png'),
(1479, 'Charmeleon', 'Fuego', 5, 'Suele usar la cola para derribar a su rival. Cuando lotira, se vale de sus afiladas garras para acabar con él.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png'),
(1480, 'Charizard', 'Fuego', 6, 'Cuando lanza una descarga de fuego supercaliente, laroja llama de su cola brilla más intensamente.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png'),
(1481, 'Squirtle', 'Agua', 7, 'Se protege con su caparazón y luego contraatacalanzando agua a presión cuando tiene oportunidad.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png'),
(1482, 'Wartortle', 'Agua', 8, 'Si es golpeado, esconderá su cabeza. Aun así, su colapuede seguir golpeando.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png'),
(1483, 'Blastoise', 'Agua', 9, 'Para acabar con su enemigo, lo aplasta con el peso desu cuerpo. En momentos de apuro, se esconde en elcaparazón.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png'),
(1484, 'Caterpie', 'Bicho', 10, 'Para protegerse despide un hedor horrible de susantenas, con el que repele a sus enemigos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png'),
(1485, 'Metapod', 'Bicho', 11, 'Su frágil cuerpo está recubierto de una coraza duracomo el acero. Permanece quieto en su desarrollo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png'),
(1486, 'Butterfree', 'Bicho', 12, 'Adora el néctar de las flores. Puede localizar hasta lasmás pequeñas cantidades de polen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png'),
(1487, 'Weedle', 'Bicho', 13, 'Suele habitar bosques y praderas. Tiene un afilado yvenenoso aguijón de unos 5 cm encima de la cabeza.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png'),
(1488, 'Kakuna', 'Bicho', 14, 'Casi incapaz de moverse, este Pokémon solo puedeendurecer su caparazón para protegerse.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png'),
(1489, 'Beedrill', 'Bicho', 15, 'Tiene 3 aguijones venenosos en sus patas y cola.Suelen pinchar a sus enemigos repetidas veces.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png'),
(1490, 'Pidgey', 'Normal', 16, 'Muy común en bosques y selvas. Aletea al nivel delsuelo para levantar la gravilla.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png'),
(1491, 'Pidgeotto', 'Normal', 17, 'Tiene unas garras desarrolladas. Puede atrapar unExeggcute y transportarlo desde una distancia decasi 100 km.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png'),
(1492, 'Pidgeot', 'Normal', 18, 'Cuando caza, vuela muy deprisa a ras del agua ysorprende a inocentes presas como Magikarp.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png'),
(1493, 'Rattata', 'Normal', 19, 'Vive allí donde haya comida disponible. Busca todoel día, sin descanso, algo comestible.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png'),
(1494, 'Raticate', 'Normal', 20, 'Lima sus colmillos royendo objetos duros. Con ellospuede destruir incluso paredes de hormigón.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png'),
(1495, 'Spearow', 'Normal', 21, 'Muy protector de su territorio, mueve sus cortas alassin descanso para lanzarse a toda velocidad.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png'),
(1496, 'Fearow', 'Normal', 22, 'Con sus enormes y magníficas alas, puede seguirvolando sin tener que aterrizar para descansar.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png'),
(1497, 'Ekans', 'Veneno', 23, 'Cuanto más viejo, más crece este Pokémon. Por lanoche, descansa en las ramas de los árboles.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png'),
(1498, 'Arbok', 'Veneno', 24, 'El dibujo que tiene en la panza aterroriza. Los rivalesmás débiles salen huyendo al verlo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png'),
(1499, 'Pikachu', 'Eléctrico', 25, 'Levanta su cola para vigilar los alrededores. A veces,puede ser alcanzado por un rayo en esa pose.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png'),
(1500, 'Raichu', 'Eléctrico', 26, 'Cuando se carga de electricidad, sus músculos setensan y se vuelve más agresivo de lo normal.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png'),
(1501, 'Sandshrew', 'Tierra', 27, 'Este Pokémon permanece bajo tierra. Si se sienteamenazado, se enrosca para defenderse.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png'),
(1502, 'Sandslash', 'Tierra', 28, 'Si cava a gran velocidad, puede que se le caigan lasgarras y púas. Vuelven a crecerle en un día.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png'),
(1503, 'Nidoran-f', 'Veneno', 29, 'Aunque pequeñas, sus venenosas púas son muypeligrosas. Tienen un cuerno más pequeño quelos machos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png'),
(1504, 'Nidorina', 'Veneno', 30, 'Tiene un carácter afable. Emite ondas ultrasónicaspara confundir al enemigo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png'),
(1505, 'Nidoqueen', 'Veneno', 31, 'Usa su cuerpo duro y escamoso para sellar la entradaa su madriguera y protegerse de los depredadores.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png'),
(1506, 'Nidoran-m', 'Veneno', 32, 'Saca las orejas por encima de la hierba para explorarel territorio. Le protege su cuerno venenoso.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png'),
(1507, 'Nidorino', 'Veneno', 33, 'Es überwacht mit seinen riesigen Ohren die Umgebung.Registriert es eine Bewegung, greift es an.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png'),
(1508, 'Nidoking', 'Veneno', 34, 'Es fácil reconocerlo por tener una dura piel y un grancuerno lleno de peligrosísimo veneno.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png'),
(1509, 'Clefairy', 'Hada', 35, 'Se dice que la felicidad llegará a quien vea a un grupode Clefairy bailando a la luz de la luna llena.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png'),
(1510, 'Clefable', 'Hada', 36, 'Su oído es tan agudo que puede oír una aguja caer a1 km. Vive en montañas solitarias.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png'),
(1511, 'Vulpix', 'Fuego', 37, 'Cuando nace solo tiene una cola, pero a medida quecrece, esta se va dividiendo desde la punta.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png'),
(1512, 'Ninetales', 'Fuego', 38, 'Tiene nueve colas y un pelaje de color dorado.Dicen que este Pokémon llega a vivir 1000 años.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png'),
(1513, 'Jigglypuff', 'Normal', 39, 'Cautiva con la mirada a su enemigo y hace que sequede profundamente dormido mientras entona unadulce melodía.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png'),
(1514, 'Wigglytuff', 'Normal', 40, 'Su piel es tan suave que si dos de ellos se acurrucanjuntos, no querrán separarse nunca.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png'),
(1515, 'Zubat', 'Veneno', 41, 'Obwohl es keine Augen hat, kann es Hindernissemithilfe von Ultraschallwellen wahrnehmen.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png'),
(1516, 'Golbat', 'Veneno', 42, 'Cuando ataque, seguirá chupando energía de suvíctima, aunque pese tanto que ya no pueda volar.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png'),
(1517, 'Oddish', 'Planta', 43, 'Durante el día, se agazapa en el frío subsuelo huyendodel sol. La luz de la luna le hace crecer mucho.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png'),
(1518, 'Gloom', 'Planta', 44, '¡Huele bastante mal! De todas formas, una de cadamil personas aprecian su fétido olor.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png'),
(1519, 'Vileplume', 'Planta', 45, 'Je größer die Blütenblätter, desto mehr giftigePollen sind in der Blüte enthalten.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png'),
(1520, 'Paras', 'Bicho', 46, 'Lleva en el lomo dos setas parásitas llamadastochukaso, que crecen con él.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png'),
(1521, 'Parasect', 'Bicho', 47, 'Parasect está dominado por una seta parásita mayorque él. Dispersa esporas venenosas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png'),
(1522, 'Venonat', 'Bicho', 48, 'Sus grandes ojos son en realidad grupos de ojosdiminutos. Por la noche se siente atraído por la luz.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png'),
(1523, 'Venomoth', 'Bicho', 49, 'Lanza unas escamas que paralizan a cualquiera.Quien las toque, no podrá ni ponerse de pie.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png'),
(1524, 'Diglett', 'Tierra', 50, 'Vive un metro por debajo del suelo, donde se alimentade raíces. También aparece en la superficie.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png'),
(1525, 'Dugtrio', 'Tierra', 51, 'En combate, cava la tierra, se esconde y sale derepente para golpear a su rival. Nunca se sabe pordónde puede aparecer.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png'),
(1526, 'Meowth', 'Normal', 52, 'Es de naturaleza nocturna. Le atraen los objetosbrillantes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png'),
(1527, 'Persian', 'Normal', 53, 'Aunque es muy admirado por el pelo, es difícil deentrenar como mascota, porque es un poco travieso.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png'),
(1528, 'Psyduck', 'Agua', 54, 'Padece continuamente dolores de cabeza. Cuandoson muy fuertes, empieza a usar misteriosos poderes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png'),
(1529, 'Golduck', 'Agua', 55, 'Aparece en ríos al anochecer. Puede usar poderestelequinéticos si su frente brilla misteriosamente.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png'),
(1530, 'Mankey', 'Lucha', 56, 'Es peligroso acercarse si se enfada sin razón aparente,ya que no distingue entre amigos y enemigos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png'),
(1531, 'Primeape', 'Lucha', 57, 'Solo se calma cuando nadie está cerca. Llegar a verese momento es realmente difícil.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png'),
(1532, 'Growlithe', 'Fuego', 58, 'Es muy agradable y leal. Para ahuyentar al enemigo,se pone a ladrar y a dar bocados.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png'),
(1533, 'Arcanine', 'Fuego', 59, 'Un Pokémon muy admirado desde la antigüedad porsu belleza. Corre ágilmente como si tuviera alas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png'),
(1534, 'Poliwag', 'Agua', 60, 'Tiene una piel extraordinaria, fina y húmeda, que dejaentrever las vísceras que tiene dispuestas en espiral.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png'),
(1535, 'Poliwhirl', 'Agua', 61, 'Capaz de vivir dentro o fuera del agua. Fuera del aguasuda para mantener baboso su cuerpo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png'),
(1536, 'Poliwrath', 'Agua', 62, 'Tiene músculos muy desarrollados. Es capaz de nadaren el océano sin descanso.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png'),
(1537, 'Abra', 'Psíquico', 63, 'Duerme 18 horas al día y mientras lo hace es capaz deusar una serie de poderes extrasensoriales.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png'),
(1538, 'Kadabra', 'Psíquico', 64, 'Cuando utiliza su poder psíquico, emite poderosasondas alfa que pueden destruir dispositivos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png'),
(1539, 'Alakazam', 'Psíquico', 65, 'Sus neuronas se multiplican continuamente durante suvida. Por eso, siempre lo recuerda todo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png'),
(1540, 'Machop', 'Lucha', 66, 'Levanta un Graveler para mantener sus músculos enforma. Domina todas las artes marciales.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png'),
(1541, 'Machoke', 'Lucha', 67, 'Su musculoso cuerpo es tan fuerte que usa un cintoantifuerza para controlar sus movimientos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png'),
(1542, 'Machamp', 'Lucha', 68, 'Tiene cuatro brazos tan bien desarrollados que puededar una serie de 1000 puñetazos en cuestión de dossegundos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png'),
(1543, 'Bellsprout', 'Planta', 69, 'Aunque su cuerpo es extremadamente delgado, esmuy rápido a la hora de capturar sus presas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png'),
(1544, 'Weepinbell', 'Planta', 70, 'Las hojas que tiene actúan como cuchillas encombate. Otra de sus armas es el corrosivo fluidoque expulsa.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png'),
(1545, 'Victreebel', 'Planta', 71, 'Pare che viva in grandi colonie nel cuore della giungla,ma nessuno è mai tornato da lì per raccontarlo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png'),
(1546, 'Tentacool', 'Agua', 72, 'Su cuerpo se compone casi en exclusiva de agua.Lanza extraños rayos con sus ojos cristalinos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png'),
(1547, 'Tentacruel', 'Agua', 73, 'Cuando caza, extiende los cortos tentáculos que tienepara atrapar e inmovilizar a su presa.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png'),
(1548, 'Geodude', 'Roca', 74, 'Aparecen en llanos y montañas. Como parecen rocas,la gente se tropieza con ellos o los pisa.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png'),
(1549, 'Graveler', 'Roca', 75, 'Di natura libera e incurante, non si preoccupa seperde dei pezzi mentre si rotola giù dai monti.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png'),
(1550, 'Golem', 'Roca', 76, 'Se lanza montaña abajo y deja un surco desde la cimahasta el pie. Es mejor mantenerse alejado.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png'),
(1551, 'Ponyta', 'Fuego', 77, 'Cuando nace, apenas puede tenerse en pie. Pero vafortaleciendo las patas en cuanto empieza a galopar.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png'),
(1552, 'Rapidash', 'Fuego', 78, 'Muy competitivo, este Pokémon perseguirá a todo loque se mueva rápido e intentará salir airoso.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png'),
(1553, 'Slowpoke', 'Agua', 79, 'Es ist stets in Gedanken versunken und niemandweiß, worüber es nachdenkt. Es kann mit seinerRute gut angeln.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png'),
(1554, 'Slowbro', 'Agua', 80, 'Tiene una cola tan apetecible, que el Shellder que vaenganchado a ella no se soltará por nada del mundo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png'),
(1555, 'Magnemite', 'Eléctrico', 81, 'Las unidades a los lados de su cuerpo generanenergía antigravitatoria para mantenerlo en el aire.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png'),
(1556, 'Magneton', 'Eléctrico', 82, 'Lo constituye un grupo de Magnemite. Descargapotentes ondas magnéticas de alto voltaje.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png'),
(1557, 'Farfetchd', 'Normal', 83, 'El puerro que lleva es su mejor arma. Suele usarlocomo espada para cortar cosas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png'),
(1558, 'Doduo', 'Normal', 84, 'Este Pokémon de dos cabezas es el resultado de unamutación. Cuando corre, puede alcanzar casi 100 kmpor hora.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png'),
(1559, 'Dodrio', 'Normal', 85, 'Más vale no perder de vista ninguna de las trescabezas. De lo contrario, el número de picotazosserá enorme.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png'),
(1560, 'Seel', 'Agua', 86, 'Este Pokémon vive en icebergs. Nada en el mar y usael cuerno de su cabeza para romper el hielo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png'),
(1561, 'Dewgong', 'Agua', 87, 'Está recubierto de un luminoso pelaje blanco. EstePokémon aumenta su actividad cuando bajan lastemperaturas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png'),
(1562, 'Grimer', 'Veneno', 88, 'Nace de lodo alterado al filtrarse en el agua losrayos X reflejados por la Luna. Se alimenta desustancias desagradables.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png'),
(1563, 'Muk', 'Veneno', 89, 'Les encanta reunirse en zonas apestosas donde seacumula el lodo, haciendo su olor más insoportable.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png'),
(1564, 'Shellder', 'Agua', 90, 'La concha lo protege de cualquier tipo de ataque.Solo es vulnerable cuando se abre.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png'),
(1565, 'Cloyster', 'Agua', 91, 'A los Cloyster que viven en las fuertes corrientesmarinas les crecen largas y afiladas púas en la concha.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png'),
(1566, 'Gastly', 'Fantasma', 92, 'Su etéreo cuerpo está hecho de gas. Puede envolvera un oponente de cualquier tamaño hasta ahogarlo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png'),
(1567, 'Haunter', 'Fantasma', 93, 'Cuando tienes la sensación de que te estánobservando, seguro que es porque Haunter estácerca.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png'),
(1568, 'Gengar', 'Fantasma', 94, 'Se esconde entre las sombras. Se dice que dondeGengar acecha, la temperatura baja 5 °C.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png'),
(1569, 'Onix', 'Roca', 95, 'Cava a gran velocidad en busca de comida. Lostúneles que deja son usados por los Diglett.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png'),
(1570, 'Drowzee', 'Psíquico', 96, 'Adormece a sus enemigos y se come sus sueños.A veces se pone enfermo si come pesadillas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png'),
(1571, 'Hypno', 'Psíquico', 97, 'Lleva un péndulo en la mano. Una vez, hizodesaparecer a un niño al que había hipnotizado.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png'),
(1572, 'Krabby', 'Agua', 98, 'Ante el peligro, se camufla con las burbujas quedesprende su boca, para parecer más grande.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png'),
(1573, 'Kingler', 'Agua', 99, 'La pinza tan grande que tiene posee una fuerza de10 000 caballos de potencia. Pero, por su grantamaño, cuesta moverla.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png'),
(1574, 'Voltorb', 'Eléctrico', 100, 'Fue descubierto cuando se crearon las Poké Balls.Se dice que tiene algo que ver con ellas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png'),
(1575, 'Electrode', 'Eléctrico', 101, 'Explotan a la mínima. Por eso se les tiene muchomiedo. Estos Pokémon reciben el mote de Bomba Ball.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png'),
(1576, 'Exeggcute', 'Planta', 102, 'Estos seis huevos se comunican por telepatía. Si seseparan, se pueden reunir rápidamente.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png'),
(1577, 'Exeggutor', 'Planta', 103, 'Sus tres cabezas piensan de forma independiente.Sin embargo, son amigas y no suelen discutir nunca.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png'),
(1578, 'Cubone', 'Tierra', 104, 'Lleva puesto el cráneo de su madre. Cuando se sientesolo se pone a gritar muy fuerte.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png'),
(1579, 'Marowak', 'Tierra', 105, 'Es pequeño y siempre ha sido muy débil. Cuandoempezó a usar huesos, se volvió más violento.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png'),
(1580, 'Hitmonlee', 'Lucha', 106, 'Encoge y estira las patas a su antojo. Cuando lasestira, es capaz de propinar una buena patada alenemigo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png'),
(1581, 'Hitmonchan', 'Lucha', 107, 'Los potentes golpes de sus brazos pueden pulverizarel hormigón. Descansa tras luchar tres minutos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png'),
(1582, 'Lickitung', 'Normal', 108, 'Su larga lengua, recubierta de saliva pegajosa, sepega a todo, por lo que es muy útil.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png'),
(1583, 'Koffing', 'Veneno', 109, 'Tiene forma de globo y es muy ligero. Está compuestopor gases tóxicos y apesta.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png'),
(1584, 'Weezing', 'Veneno', 110, 'Si uno de los gemelos Koffing se infla, el otro sedesinfla. Mezclan constantemente sus venenososgases.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png'),
(1585, 'Rhyhorn', 'Tierra', 111, 'Es muy fuerte, pero no especialmente listo. Es capazde derribar rascacielos usando Placaje varias veces.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png'),
(1586, 'Rhydon', 'Tierra', 112, 'La piel le sirve de escudo protector. Puede vivir enlava líquida a 2000 °C de temperatura.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png'),
(1587, 'Chansey', 'Normal', 113, 'Se dice que reparte felicidad. Se caracteriza por sucompasión y reparte sus huevos entre la gente herida.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png'),
(1588, 'Tangela', 'Planta', 114, 'Se camufla con la multitud de lianas que envuelven sucuerpo y que no dejan de crecer a lo largo de toda suvida.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png'),
(1589, 'Kangaskhan', 'Normal', 115, 'Lleva a su cría en la bolsa de su panza. Solo deja quesu cría salga a jugar cuando no siente peligro.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png'),
(1590, 'Horsea', 'Agua', 116, 'Es famoso por derribar a bichos voladores lanzandotinta desde la superficie del agua.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png'),
(1591, 'Seadra', 'Agua', 117, 'Las afiladas púas que le recubren el cuerpo se leerizan y pueden causar el debilitamiento con solotocarlo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png'),
(1592, 'Goldeen', 'Agua', 118, 'Nada a una velocidad de cinco nudos. Si sientepeligro, golpea con su afilado cuerno.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png'),
(1593, 'Seaking', 'Agua', 119, 'En otoño, cuando se reproducen, se les puede vernadando con energía por ríos y arroyos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png'),
(1594, 'Staryu', 'Agua', 120, 'Aunque sus brazos se rompan podrán regenerarse,siempre y cuando su núcleo siga intacto.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png'),
(1595, 'Starmie', 'Agua', 121, 'Su núcleo central brilla con los colores del arcoíris.Para algunos tiene el valor de una gema.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png'),
(1596, 'Mr-mime', 'Psíquico', 122, 'Para repeler ataques, solidifica el aire y crea murosinvisibles con emanaciones de sus dedos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png'),
(1597, 'Scyther', 'Bicho', 123, 'Destroza a su presa con las guadañas que tiene.No es común que use las alas para volar.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png'),
(1598, 'Jynx', 'Hielo', 124, 'Camina moviendo las caderas de forma llamativa.Puede hacer que la gente baile a su ritmo.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png'),
(1599, 'Electabuzz', 'Eléctrico', 125, 'Por la superficie de su piel corre la electricidad. En laoscuridad, su cuerpo se torna blanquecino.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png'),
(1600, 'Magmar', 'Fuego', 126, 'A este Pokémon se lo encontraron cerca de un volcán.Esta criatura ígnea tiene una temperatura corporal deunos 1200 °C.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png'),
(1601, 'Pinsir', 'Bicho', 127, 'Atrapa presas con sus pinzas hasta que las parte endos. Lanza lejos lo que no puede quebrar.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png'),
(1602, 'Tauros', 'Normal', 128, 'Después de animarse a luchar fustigándose con sustres colas, carga a toda velocidad.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png'),
(1603, 'Magikarp', 'Agua', 129, 'No es precisamente rápido ni fuerte. Es el Pokémonmás debilucho y simplón de todos los que hay.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png'),
(1604, 'Gyarados', 'Agua', 130, 'En la literatura antigua se dice que un Gyaradosrebosante de violencia arrasó un poblado.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png'),
(1605, 'Lapras', 'Agua', 131, 'Son buenos de corazón. Muchos fueron capturadospor ser tan pacíficos. Ahora hay muchos menos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png'),
(1606, 'Ditto', 'Normal', 132, 'Puede alterar por completo su estructura celular paraemular cualquier objeto que vea.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png'),
(1607, 'Eevee', 'Normal', 133, 'Un extraño Pokémon que se adapta a los entornosmás hostiles gracias a sus diferentes evoluciones.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png'),
(1608, 'Vaporeon', 'Agua', 134, 'Prefiere las bellas costas. Con células parecidas alagua, podría fundirse en la misma.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png'),
(1609, 'Jolteon', 'Eléctrico', 135, 'Todos los pelos de su cuerpo se ponen de punta siempieza a cargarse de electricidad.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png'),
(1610, 'Flareon', 'Fuego', 136, 'Almacena llamas en su cuerpo, que alcanza unatemperatura de 900 °C antes de un combate.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png'),
(1611, 'Porygon', 'Normal', 137, 'Pokémon creado por el hombre tras muchasinvestigaciones. Sus habilidades son básicas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png'),
(1612, 'Omanyte', 'Roca', 138, 'Pokémon prehistórico que vivió en el océanoprimordial. Para nadar se valía de sus 10 tentáculos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png'),
(1613, 'Omastar', 'Roca', 139, 'Tiene los tentáculos tan desarrollados que le sirven demanos y pies. Con ellos atrapa a su presa y le da unbocado.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png'),
(1614, 'Kabuto', 'Roca', 140, 'Se cree que habitó las playas hace 300 millones deaños. Se protege con una dura concha.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png'),
(1615, 'Kabutops', 'Roca', 141, 'Repliega sus extremidades en el agua para hacersemás compacto, y mueve su concha para nadar rápido.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png'),
(1616, 'Aerodactyl', 'Roca', 142, 'Se regeneró a partir de material genético de undinosaurio encontrado en ámbar. Cuando vuela emiteescandalosos alaridos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png'),
(1617, 'Snorlax', 'Normal', 143, 'No se encuentra satisfecho hasta que no se come400 kg de comida cada día. Cuando acaba de comer,se queda dormido.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png'),
(1618, 'Articuno', 'Hielo', 144, 'Legendario Pokémon pájaro capaz de generarventiscas congelando la humedad del aire.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png'),
(1619, 'Zapdos', 'Eléctrico', 145, 'Es un legendario pájaro Pokémon. Dicen que apareceentre las nubes lanzando enormes rayos brillantes.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png'),
(1620, 'Moltres', 'Fuego', 146, 'Es más conocido como el legendario pájaro de fuego.Con cada aleteo crea brillantes llamas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png'),
(1621, 'Dratini', 'Dragón', 147, 'Se le llama el Pokémon Espejismo porque son muypocos los que lo han visto. Se encontró su muda.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png'),
(1622, 'Dragonair', 'Dragón', 148, 'Sus cristalinos orbes parecen darle al Pokémon elpoder de controlar el clima libremente.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png'),
(1623, 'Dragonite', 'Dragón', 149, 'A pesar del tamaño que tiene y de lo pesado que es,puede volar. Es capaz de dar la vuelta al mundo ensolo 16 horas.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png'),
(1624, 'Mewtwo', 'Psíquico', 150, 'Fue creado por un científico tras años de horriblesexperimentos de ingeniería genética.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png'),
(1625, 'Mew', 'Psíquico', 151, 'Varios científicos lo consideran el antecesor de losPokémon porque usa todo tipo de movimientos.', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png'),
(1627, 'Lugia', 'Psíquico', 249, 'La fuerza que tiene Lugia en las alas es devastadora; con nada que las bata es capaz de derribar edificios enteros. Por eso mismo, prefiere vivir donde no haya nadie, en lo más profundo del mar.', '/images/676d4287dcac3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_debilidad`
--

CREATE TABLE `pokemon_debilidad` (
  `pokemon_id` int(11) NOT NULL,
  `debilidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pokemon_debilidad`
--

INSERT INTO `pokemon_debilidad` (`pokemon_id`, `debilidad_id`) VALUES
(1475, 3),
(1475, 9),
(1475, 13),
(1475, 14),
(1476, 3),
(1476, 9),
(1476, 13),
(1476, 14),
(1477, 3),
(1477, 9),
(1477, 13),
(1477, 14),
(1478, 4),
(1478, 5),
(1478, 10),
(1479, 4),
(1479, 5),
(1479, 10),
(1480, 4),
(1480, 5),
(1480, 10),
(1481, 11),
(1481, 12),
(1482, 11),
(1482, 12),
(1483, 11),
(1483, 12),
(1484, 2),
(1484, 5),
(1484, 9),
(1485, 2),
(1485, 5),
(1485, 9),
(1486, 2),
(1486, 5),
(1486, 9),
(1486, 12),
(1486, 14),
(1487, 5),
(1487, 9),
(1487, 13),
(1488, 2),
(1488, 5),
(1488, 9),
(1488, 13),
(1489, 2),
(1489, 5),
(1489, 9),
(1489, 13),
(1490, 5),
(1490, 12),
(1490, 14),
(1491, 5),
(1491, 12),
(1491, 14),
(1492, 5),
(1492, 12),
(1492, 14),
(1493, 1),
(1494, 1),
(1495, 5),
(1495, 12),
(1495, 14),
(1496, 5),
(1496, 12),
(1496, 14),
(1497, 4),
(1497, 13),
(1498, 4),
(1498, 13),
(1499, 4),
(1500, 4),
(1501, 10),
(1501, 11),
(1501, 14),
(1502, 10),
(1502, 11),
(1502, 14),
(1503, 4),
(1503, 13),
(1504, 4),
(1504, 13),
(1505, 4),
(1505, 10),
(1505, 13),
(1505, 14),
(1506, 4),
(1506, 13),
(1507, 4),
(1507, 13),
(1508, 4),
(1508, 10),
(1508, 13),
(1508, 14),
(1509, 3),
(1509, 8),
(1510, 3),
(1510, 8),
(1511, 4),
(1511, 5),
(1511, 10),
(1512, 4),
(1512, 5),
(1512, 10),
(1513, 3),
(1513, 8),
(1514, 3),
(1514, 8),
(1515, 5),
(1515, 12),
(1515, 13),
(1515, 14),
(1516, 5),
(1516, 12),
(1516, 13),
(1516, 14),
(1517, 2),
(1517, 9),
(1517, 13),
(1517, 14),
(1518, 2),
(1518, 9),
(1518, 13),
(1518, 14),
(1519, 2),
(1519, 9),
(1519, 13),
(1519, 14),
(1520, 2),
(1520, 3),
(1520, 5),
(1520, 6),
(1520, 9),
(1520, 14),
(1521, 2),
(1521, 3),
(1521, 5),
(1521, 6),
(1521, 9),
(1521, 14),
(1522, 2),
(1522, 5),
(1522, 9),
(1522, 13),
(1523, 2),
(1523, 5),
(1523, 9),
(1523, 13),
(1524, 10),
(1524, 11),
(1524, 14),
(1525, 10),
(1525, 11),
(1525, 14),
(1526, 1),
(1527, 1),
(1528, 11),
(1528, 12),
(1529, 11),
(1529, 12),
(1530, 2),
(1530, 13),
(1530, 17),
(1531, 2),
(1531, 13),
(1531, 17),
(1532, 4),
(1532, 5),
(1532, 10),
(1533, 4),
(1533, 5),
(1533, 10),
(1534, 11),
(1534, 12),
(1535, 11),
(1535, 12),
(1536, 2),
(1536, 11),
(1536, 12),
(1536, 13),
(1536, 17),
(1537, 6),
(1537, 7),
(1538, 6),
(1538, 7),
(1539, 6),
(1539, 7),
(1540, 2),
(1540, 13),
(1540, 17),
(1541, 2),
(1541, 13),
(1541, 17),
(1542, 2),
(1542, 13),
(1542, 17),
(1543, 2),
(1543, 9),
(1543, 13),
(1543, 14),
(1544, 2),
(1544, 9),
(1544, 13),
(1544, 14),
(1545, 2),
(1545, 9),
(1545, 13),
(1545, 14),
(1546, 4),
(1546, 12),
(1546, 13),
(1547, 4),
(1547, 12),
(1547, 13),
(1548, 1),
(1548, 4),
(1548, 8),
(1548, 10),
(1548, 11),
(1548, 14),
(1549, 1),
(1549, 4),
(1549, 8),
(1549, 10),
(1549, 11),
(1549, 14),
(1550, 1),
(1550, 4),
(1550, 8),
(1550, 10),
(1550, 11),
(1550, 14),
(1551, 4),
(1551, 5),
(1551, 10),
(1552, 4),
(1552, 5),
(1552, 10),
(1553, 6),
(1553, 7),
(1553, 11),
(1553, 12),
(1554, 6),
(1554, 7),
(1554, 11),
(1554, 12),
(1555, 1),
(1555, 4),
(1555, 9),
(1556, 1),
(1556, 4),
(1556, 9),
(1557, 5),
(1557, 12),
(1557, 14),
(1558, 5),
(1558, 12),
(1558, 14),
(1559, 12),
(1559, 14),
(1560, 11),
(1560, 12),
(1561, 11),
(1561, 12),
(1562, 4),
(1562, 13),
(1563, 4),
(1563, 13),
(1564, 11),
(1564, 12),
(1565, 1),
(1565, 5),
(1565, 11),
(1565, 12),
(1566, 4),
(1566, 7),
(1566, 13),
(1567, 4),
(1567, 7),
(1567, 13),
(1568, 4),
(1568, 7),
(1568, 13),
(1569, 1),
(1569, 4),
(1569, 8),
(1569, 10),
(1569, 12),
(1569, 14),
(1570, 6),
(1570, 7),
(1571, 6),
(1571, 7),
(1572, 11),
(1572, 12),
(1573, 11),
(1573, 12),
(1574, 4),
(1575, 4),
(1576, 2),
(1576, 3),
(1576, 6),
(1576, 7),
(1576, 9),
(1576, 14),
(1577, 2),
(1577, 6),
(1577, 7),
(1577, 9),
(1577, 13),
(1577, 14),
(1578, 10),
(1578, 11),
(1578, 14),
(1579, 10),
(1579, 11),
(1579, 14),
(1580, 2),
(1580, 13),
(1580, 17),
(1581, 2),
(1581, 13),
(1581, 17),
(1582, 1),
(1583, 4),
(1583, 13),
(1584, 4),
(1584, 13),
(1585, 1),
(1585, 4),
(1585, 8),
(1585, 10),
(1585, 11),
(1585, 14),
(1586, 1),
(1586, 4),
(1586, 8),
(1586, 10),
(1586, 11),
(1586, 14),
(1587, 1),
(1588, 2),
(1588, 3),
(1588, 6),
(1588, 9),
(1588, 14),
(1589, 1),
(1590, 11),
(1590, 12),
(1591, 11),
(1591, 12),
(1592, 11),
(1592, 12),
(1593, 11),
(1593, 12),
(1594, 11),
(1594, 12),
(1595, 11),
(1595, 12),
(1596, 3),
(1596, 8),
(1597, 2),
(1597, 5),
(1597, 9),
(1597, 12),
(1597, 14),
(1598, 5),
(1598, 6),
(1598, 7),
(1598, 8),
(1598, 9),
(1599, 4),
(1600, 4),
(1600, 5),
(1600, 10),
(1601, 2),
(1601, 5),
(1601, 9),
(1602, 1),
(1603, 11),
(1603, 12),
(1604, 11),
(1604, 12),
(1605, 1),
(1605, 5),
(1605, 11),
(1605, 12),
(1606, 1),
(1607, 1),
(1608, 11),
(1608, 12),
(1609, 4),
(1610, 4),
(1610, 5),
(1610, 10),
(1611, 1),
(1612, 1),
(1612, 4),
(1612, 11),
(1612, 12),
(1613, 1),
(1613, 4),
(1613, 11),
(1613, 12),
(1614, 1),
(1614, 4),
(1614, 11),
(1614, 12),
(1615, 1),
(1615, 4),
(1615, 11),
(1615, 12),
(1616, 5),
(1616, 8),
(1616, 10),
(1616, 12),
(1616, 14),
(1617, 1),
(1618, 5),
(1618, 8),
(1618, 9),
(1618, 12),
(1619, 5),
(1619, 14),
(1620, 5),
(1620, 10),
(1620, 12),
(1621, 14),
(1621, 15),
(1621, 17),
(1622, 14),
(1622, 15),
(1622, 17),
(1623, 14),
(1623, 15),
(1623, 17),
(1624, 6),
(1624, 7),
(1625, 6),
(1625, 7),
(1627, 7),
(1627, 8),
(1627, 9),
(1627, 10),
(1627, 11),
(1627, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(13, 'darioAdmin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$CZlDu7sxNFP2wSwinWGtxut1rBFr0LW.31/K6hzEjfQN5GtEItmnK', 'darioAdmin'),
(14, 'julioAdmin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$wu80hpz89LLEZ6rgSfimDOhJNKCYQ.lAIXQrsZ1wmme/Rkj46U5GW', 'julioAdmin'),
(15, 'user@gmail.com', '[]', '$2y$13$eMxlolLV64fKJ1w7UcZ4PuYIofKPCj0Z7F7MQGmj6KxhBT/s7864e', 'user'),
(16, 'user2@gmail.com', '[]', '$2y$13$edbyjO7qyVPTYAvqZ/h4vehxkBu9vBq3647w6/wKW.VIvjrg28qsW', 'user2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `debilidad`
--
ALTER TABLE `debilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemon_debilidad`
--
ALTER TABLE `pokemon_debilidad`
  ADD PRIMARY KEY (`pokemon_id`,`debilidad_id`),
  ADD KEY `IDX_1EBD3D3F2FE71C3E` (`pokemon_id`),
  ADD KEY `IDX_1EBD3D3FD7C99BD5` (`debilidad_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `debilidad`
--
ALTER TABLE `debilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1643;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1628;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pokemon_debilidad`
--
ALTER TABLE `pokemon_debilidad`
  ADD CONSTRAINT `FK_1EBD3D3F2FE71C3E` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1EBD3D3FD7C99BD5` FOREIGN KEY (`debilidad_id`) REFERENCES `debilidad` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
