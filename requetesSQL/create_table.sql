DROP TABLE IF EXISTS *;

/*================TABLE movie================*/
CREATE TABLE movie(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    year_released DATE,
    rating FLOAT,
    duration TIME,
    budget INT,
    box_office BIGINT,
    distribution_company_id INT,
    director_id INT NOT NULL,
    genre_id INT NOT NULL,
    language_id INT NOT NULL
);

/*================TABLE distribution_company================*/
CREATE TABLE distribution_company(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

/*================TABLE director================*/
CREATE TABLE director(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL
);

/*================TABLE genre================*/
CREATE TABLE genre(
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) NOT NULL
);

/*================TABLE language================*/
CREATE TABLE language(
    id SERIAL PRIMARY KEY,
    lang VARCHAR(255)
);

/*================TABLE de jointure movie_lang================*/
CREATE TABLE movie_lang(
movie_id INT NOT NULL,
language_id INT NOT NULL
);

/*================AJOUT DES FOREIGN KEYS================*/
/* =========== EN TABLE movie ==========================*/
ALTER TABLE movie
    ADD CONSTRAINT fk_distribution_company
        FOREIGN KEY (distribution_company_id)
        REFERENCES distribution_company(id)
        ON DELETE CASCADE,
    ADD CONSTRAINT fk_genre
        FOREIGN KEY (genre_id)
        REFERENCES genre(id)
        ON DELETE CASCADE,
    ADD CONSTRAINT fk_director
        FOREIGN KEY (director_id)
        REFERENCES director(id)
        ON DELETE CASCADE;

/* =========== EN TABLE de jointure movie_lang ==========================*/
ALTER TABLE movie_lang
    ADD CONSTRAINT fk_movie
        FOREIGN KEY (movie_id)
        REFERENCES movie(id),
    ADD CONSTRAINT fk_language
        FOREIGN KEY (language_id)
        REFERENCES language(id);








