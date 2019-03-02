INSERT INTO books(name, initial_edition_id)
VALUES ('Hansel & Gretel', 0) RETURNING *;



INSERT INTO editions(name, book_id, current)
VALUES ('First', 1, TRUE) RETURNING *;


BEGIN;
SET CONSTRAINTS at_least_one_edition_for_book DEFERRED;

INSERT INTO books(NAME, initial_edition_id)
VALUES ('Kane & Abel', 0) RETURNING *;

INSERT INTO editions(NAME, book_id, CURRENT)
VALUES ('Latest', 5, FALSE) RETURNING *;

UPDATE books
SET initial_edition_id = 6
WHERE id = 5;
COMMIT;


ROLLBACK;

-- TRUNCATE TABLE books RESTART IDENTITY CASCADE;

INSERT INTO books(name, initial_edition_id)
VALUES ('Intro to Algorithms', 0) RETURNING *;

INSERT INTO books(name)
VALUES ('Intro to Algorithms') RETURNING *;


SELECT b.id, b.name AS book_name, e.name AS edition_name
FROM books b
       INNER JOIN editions e ON b.id = e.book_id
LIMIT 25;
