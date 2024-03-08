/*===============  AFFICHAGE DE LA TOTALITE DES FILMS  ================*/

SELECT DISTINCT
    m.title AS title,
    g.type AS genre,
    m.year_released AS year,
    dc.name AS productor,
    d.first_name||' '||d.name AS director,
    STRING_AGG(l.lang, ', ') AS language 
FROM movie m
    LEFT JOIN distribution_company dc
    ON m.distribution_company_id = dc.id
    INNER JOIN director d
    ON d.id=m.director_id
    INNER JOIN genre g
    ON g.id=m.genre_id
    INNER JOIN movie_lang ml
    ON ml.movie_id=m.id
    INNER JOIN language l
    ON l.id=ml.language_id
GROUP BY
    m.title, g.type, m.year_released, dc.name, d.first_name, d.name;