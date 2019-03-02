-- Let's create books
CREATE TABLE books (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR NOT NULL, /* Name must be present */
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- And editions
CREATE TABLE editions (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR NOT NULL,/* Name must be present */
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- Genres
CREATE TABLE genres (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR NOT NULL,/* Name must be present */
  created_at TIMESTAMP DEFAULT current_timestamp
);


-- Edition belongs to a book
ALTER TABLE editions
  ADD COLUMN book_id INTEGER NOT NULL REFERENCES books(id);


-- When column exists
-- ALTER TABLE editions
--   ADD COLUMN book_id INTEGER;
-- ALTER TABLE editions
--   ALTER COLUMN book_id SET NOT NULL;
-- ALTER TABLE editions
--   ADD CONSTRAINT edition_belongs_to_book FOREIGN KEY (book_id) REFERENCES books (id);

-- Books have one current edition
-- Edition can be current or not

ALTER TABLE editions
  ADD COLUMN current BOOLEAN DEFAULT FALSE;

ALTER TABLE editions
  ADD CONSTRAINT only_one_current_edition
    EXCLUDE USING btree (book_id WITH =)
    WHERE ( current = TRUE );

-- alter TABLE editions DROP CONSTRAINT only_one_current_edition;

-- Books have at least one edition
-- Double edged sword!
-- ALTER TABLE books
--   ADD COLUMN initial_edition_id INTEGER NOT NULL;
-- --
-- ALTER TABLE books
--   ADD CONSTRAINT at_least_one_edition_for_book
--     FOREIGN KEY (initial_edition_id) REFERENCES editions (id);
-- --
-- ALTER TABLE books
--   ALTER CONSTRAINT at_least_one_edition_for_book
--     DEFERRABLE INITIALLY DEFERRED;

-- Relax the "at least one" criterion
ALTER TABLE books
  DROP COLUMN initial_edition_id;

-- A good use case for using triggers


CREATE TABLE books_genres (
  id       SERIAL PRIMARY KEY,
  book_id  INTEGER NOT NULL REFERENCES books(id),
  genre_id INTEGER NOT NULL REFERENCES genres(id)
);


-- Authors
CREATE TABLE authors (
  id         SERIAL PRIMARY KEY,
  name       CHARACTER VARYING NOT NULL,
  bio        TEXT,
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- Books can have many authors
-- Authors can have many books
CREATE TABLE authors_books (
  id         SERIAL,
  book_id    INTEGER NOT NULL,
  author_id  INTEGER NOT NULL,
  position   INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp
);

ALTER TABLE authors_books
  ADD CONSTRAINT authors_books_belongs_to_book
    FOREIGN KEY (book_id) REFERENCES books(id);

ALTER TABLE authors_books
  ADD CONSTRAINT authors_books_belongs_to_author
    FOREIGN KEY (author_id) REFERENCES authors(id);

-- One author can author a book just once
ALTER TABLE authors_books
  ADD CONSTRAINT can_author_only_once
    UNIQUE (book_id, author_id);

ALTER TABLE authors_books
  ADD CONSTRAINT can_author_only_once
    EXCLUDE USING btree (book_id WITH =, author_id WITH =);


-- Since position is a list, add some constraints
ALTER TABLE authors_books
  ADD CONSTRAINT authors_books_position_unique
    UNIQUE (book_id, position);

ALTER TABLE authors_books
  ADD CONSTRAINT author_position_must_be_positive
    CHECK ( position > 0 );

-- users
CREATE TABLE users (
  id         SERIAL PRIMARY KEY,
  login      VARCHAR NOT NULL,
  email      TEXT    NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp
);

ALTER TABLE users
  ADD CONSTRAINT email_must_be_unique UNIQUE (email);

-- CaSinG issue

CREATE EXTENSION IF NOT EXISTS citext;

ALTER TABLE users
  ALTER COLUMN email TYPE CITEXT USING email::CITEXT;

-- ALTER TABLE email_addresses
--   DROP CONSTRAINT email_must_be_unique;
-- CREATE UNIQUE INDEX email_must_be_unique ON users (lower(email));

-- Add a concept called Admin
ALTER TABLE users
  ADD COLUMN admin BOOLEAN NOT NULL DEFAULT FALSE;

-- If they're admin, minimum 3 and maximum 100
-- If they're not admin, minimum 3 and maximum 50
ALTER TABLE users
  ADD CONSTRAINT login_size_limits
    CHECK (
        length(login) >= 3 AND
        ((admin AND length(login) <= 100) OR
         ((NOT ADMIN) AND length(login) <= 50))
      );

CREATE TABLE ratings (
  id         SERIAL PRIMARY KEY,
  user_id    INTEGER NOT NULL REFERENCES users(id),
  edition_id INTEGER NOT NULL REFERENCES editions(id),
  rating     INTEGER NOT NULL CHECK ( 0 < rating AND rating <= 5 ),
  review     TEXT
);

CREATE TABLE shelves (
  id          SERIAL PRIMARY KEY,
  name        CITEXT  NOT NULL,
  user_id     INTEGER NOT NULL REFERENCES users(id),
  description TEXT
);

ALTER TABLE shelves
  ADD CONSTRAINT unique_shelves_per_user UNIQUE (user_id, name);

CREATE TABLE books_on_the_shelves (
  id         SERIAL PRIMARY KEY,
  edition_id INTEGER NOT NULL REFERENCES editions(id),
  shelf_id   INTEGER NOT NULL REFERENCES shelves(id),
  position   INTEGER NOT NULL CHECK ( position > 0 )
);

ALTER TABLE books_on_the_shelves
  ADD CONSTRAINT one_book_once_in_a_shelf UNIQUE (shelf_id, edition_id);
ALTER TABLE books_on_the_shelves
  ADD CONSTRAINT books_are_ordered_in_a_shelf UNIQUE (shelf_id, position);


-- Reset stuff
-- Dependent
-- DROP TABLE authors_books;
-- DROP TABLE ratings;
-- DROP TABLE books_on_the_shelves;
-- DROP TABLE books_genres;
--
-- Independent
-- DROP TABLE genres;
-- DROP TABLE shelves;
-- DROP TABLE authors;
-- DROP TABLE editions CASCADE ;
-- DROP TABLE books;
-- DROP TABLE users;
