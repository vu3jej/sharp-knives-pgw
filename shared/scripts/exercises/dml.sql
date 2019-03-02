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


CREATE TYPE APPOINTMENT_TYPE AS ENUM (
  'email',
  'phone',
  'text',
  'other',
  'in_person',
  'note'
  );

BEGIN;

ALTER TYPE APPOINTMENT_TYPE ADD VALUE 'social_media';

COMMIT;


TRUNCATE TABLE shelves_users RESTART IDENTITY;


INSERT INTO shelves_users (shelf_id, user_id, description)
SELECT id, user_id, description
FROM shelves
ON CONFLICT ON CONSTRAINT shelves_users_uniqueness DO NOTHING;


SELECT count(*)
FROM shelves;


-- Delete all data
-- TRUNCATE TABLE authors_books RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE ratings RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE editions_shelves RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE books_genres RESTART IDENTITY CASCADE;
-- -- TRUNCATE TABLE shelves_users RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE genres RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE shelves RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE authors RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE editions RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE books RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE users RESTART IDENTITY CASCADE;
