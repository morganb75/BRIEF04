/*==================  INSERTION EN BDD DES RESSOURCES  ======================*/
/*   ATTENTION A L'ORDRE ETANT DONNE L'ARCHITECTURE DE LA BDD   */

/* ===============   DISTRIBUTION COMPANIES   ====================*/
INSERT INTO distribution_company(name)
VALUES 
('Columbia Pictures'),('Paramount Pictures'),
('Warner Bros'),('Orion Pictures'),
('Universal Pictures'),('New Line Cinema'),
('Miramax Films'),('United Artists'),
('Gaumont Film Company'),('The Weinstein Company'),
('Wild Bunch');

/* ===============   GENRES   ====================*/
INSERT INTO genre(type)
VALUES
('Drama'),('Crime'), ('Action'),
('Fantasy'),('Western'),('Comedy'),
('Thriller'),('War'),('Romance'),
('Horror'),('Silent');

/* ===============   DIRECTORS   ====================*/
INSERT INTO director(first_name,name)
VALUES
('Frank','Darabont'),('Francis Ford','Coppola'),
('Christopher','Nolan'),('Sydney','Lumet'),
('Steven','Spielberg'),('Peter','Jackson'),
('Quentin','Tarentino'),('Sergio','Leone'),
('Robert','Zemeckis'),('Olivier','Nakache'),
('Jonathan','Demme'),('Abdellatif','Kechiche');

/* ===============   LANGUAGES   ====================*/
INSERT INTO language(lang)
VALUES
('English'),('Sicilian'),('German'),
('Yddish'),('Italian'),
('Spanish'),('French');

/* ===============   MOVIES  =========================*/
INSERT INTO movie(title,year_released,rating,duration,budget,box_office,distribution_company_id,director_id,genre_id)
VALUES
('The Shawshank Redemption',1994,9.2,142,25000000,73300000,1,1,1),
('The Godfather',1972,9.2,175,7200000,291000000,2,2,2),
('The Dark Knight',2008,9.0,152,185000000,1006000000,3,3,3),
('The Godfather Part II',1974,9.0,202,13000000,93000000,2,2,2),
('12 Angry Men',1957,9.0,96,340000,2000000,4,4,1),
('Schindler''s List',1993,8.9,195,22000000,322200000,5,5,1),
('The Lord of the Rings: The Return of the King',2003,8.9,201,94000000,1146000000,6,6,4),
('Pulp Fiction',1994,8.8,154,8500000,213900000,7,7,2),
('The Lord of the Rings: The Fellowship of the Ring',2001,8.8,178,93000000,898200000,6,6,4),
('The Good, the Bad and the Ugly',1966,8.8,161,1200000,38900000,8,8,5),
('Forrest Gump',1994,8.7,142,55000000,677400000,5,9,1),
('Intouchables',2011,8.5,112,10800000,426600000,9,10,6),
('The Silence of the Lambs',1991,8.6,118,19000000,272700000,4,11,4),
('Inglourious Bastards',2009,8.4,153,70000000,321500000,10,7,8),
('La Vie d''Adèle',2013,7.7,180,4000000,19000000,11,12,9),
('Pulp Fiction',1994,8.8,154,8500000,213900000,7,7,2);

/* ===============  JOINTURE MOVIE_LANG  ===============*/
INSERT INTO movie_lang(movie_id,language_id) 
VALUES
(1,1),(2,1),(3,1),(4,1),(4,2),(5,1),(6,1),(6,3),(6,4),
(7,1),(8,1),(9,1),(10,1),(10,5),(10,6),(11,1),(12,7),
(13,1),(14,1),(14,3),(14,5),(14,7),(15,7),(16,1);

