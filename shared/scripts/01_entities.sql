-- Let's create books
CREATE TABLE books (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR NOT NULL, /* Name must be present */
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- And editions
CREATE TABLE editions (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR NOT NULL,
  book_id    INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- Edition belongs to a book
ALTER TABLE editions
  ADD CONSTRAINT edition_belongs_to_book FOREIGN KEY (book_id) REFERENCES books(id);

-- Books have one current edition
-- Edition can be current or not

ALTER TABLE editions
  ADD COLUMN current BOOLEAN DEFAULT FALSE;

ALTER TABLE editions
  ADD CONSTRAINT only_one_current_edition EXCLUDE USING btree (book_id WITH =) WHERE ( current = TRUE );

-- Authors
CREATE TABLE authors (
  id         SERIAL PRIMARY KEY,
  name       CHARACTER VARYING NOT NULL,
  bio        TEXT,
  created_at TIMESTAMP DEFAULT current_timestamp
);

-- Books can have many authors
-- Authors can have many books
CREATE TABLE books_authors (
  id         SERIAL,
  book_id    INTEGER NOT NULL,
  author_id  INTEGER NOT NULL,
  position   INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp
);

ALTER TABLE books_authors
  ADD CONSTRAINT books_authors_belongs_to_book FOREIGN KEY (book_id) REFERENCES books(id);

ALTER TABLE books_authors
  ADD CONSTRAINT books_authors_belongs_to_author FOREIGN KEY (author_id) REFERENCES authors(id);

-- One author can author a book just once
ALTER TABLE books_authors
  ADD CONSTRAINT can_author_only_once UNIQUE (book_id, author_id);

ALTER TABLE books_authors
  ADD CONSTRAINT books_authors_position_unique UNIQUE (book_id, position);

ALTER TABLE books_authors
  ADD CONSTRAINT author_position_must_be_positive CHECK ( position > 0 );

-- users
CREATE TABLE users (
  id         SERIAL PRIMARY KEY,
  login      VARCHAR NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE email_addresses (
  id      SERIAL,
  user_id INTEGER NOT NULL,
  address TEXT
);

CREATE EXTENSION citext;

ALTER TABLE email_addresses
  ALTER COLUMN address TYPE CITEXT USING address::CITEXT;

ALTER TABLE email_addresses
  ALTER COLUMN address SET NOT NULL;

ALTER TABLE email_addresses
  ADD CONSTRAINT email_address_belongs_to_user FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE email_addresses
  ADD CONSTRAINT email_must_be_unique UNIQUE (address);

-- ALTER TABLE email_addresses DROP CONSTRAINT email_must_be_unique;
-- CREATE UNIQUE INDEX email_must_be_unique ON email_addresses (lower(address));


-- Add a concept called Admin
ALTER TABLE users
  ADD COLUMN ADMIN BOOLEAN NOT NULL DEFAULT FALSE;

-- If they're admin, minimum 6 and maximum 100
-- If they're not admin, minimum 6 and maximum 50
ALTER TABLE users
  ADD CONSTRAINT login_size_limits CHECK (
      length(login) >= 6 AND ((admin AND length(login) <= 100) OR
                              ((NOT ADMIN) AND length(login) <= 50))
    )


-- Reset stuff
-- DROP TABLE books_authors;
-- DROP TABLE editions;
-- DROP TABLE authors;
-- DROP TABLE books;
-- DROP TABLE email_addresses;
-- DROP TABLE users;
