--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: appointment_type; Type: TYPE; Schema: public; Owner: pgw
--

CREATE TYPE public.appointment_type AS ENUM (
    'email',
    'phone',
    'text',
    'other',
    'in_person',
    'note'
);


ALTER TYPE public.appointment_type OWNER TO pgw;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO pgw;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying NOT NULL,
    bio text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.authors OWNER TO pgw;

--
-- Name: authors_books; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.authors_books (
    id integer NOT NULL,
    book_id integer NOT NULL,
    author_id integer NOT NULL,
    "position" integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    CONSTRAINT author_position_must_be_positive CHECK (("position" > 0))
);


ALTER TABLE public.authors_books OWNER TO pgw;

--
-- Name: authors_books_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.authors_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_books_id_seq OWNER TO pgw;

--
-- Name: authors_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.authors_books_id_seq OWNED BY public.authors_books.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO pgw;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    isbn uuid DEFAULT public.gen_random_uuid() NOT NULL
);


ALTER TABLE public.books OWNER TO pgw;

--
-- Name: books_genres; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.books_genres (
    id integer NOT NULL,
    book_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.books_genres OWNER TO pgw;

--
-- Name: books_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.books_genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genres_id_seq OWNER TO pgw;

--
-- Name: books_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.books_genres_id_seq OWNED BY public.books_genres.id;


--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO pgw;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: editions; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.editions (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    book_id integer NOT NULL,
    current boolean DEFAULT false
);


ALTER TABLE public.editions OWNER TO pgw;

--
-- Name: editions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.editions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.editions_id_seq OWNER TO pgw;

--
-- Name: editions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.editions_id_seq OWNED BY public.editions.id;


--
-- Name: editions_shelves; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.editions_shelves (
    id integer NOT NULL,
    edition_id integer NOT NULL,
    shelf_id integer NOT NULL,
    "position" integer NOT NULL,
    CONSTRAINT editions_shelves_position_check CHECK (("position" > 0))
);


ALTER TABLE public.editions_shelves OWNER TO pgw;

--
-- Name: editions_shelves_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.editions_shelves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.editions_shelves_id_seq OWNER TO pgw;

--
-- Name: editions_shelves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.editions_shelves_id_seq OWNED BY public.editions_shelves.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name public.citext NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.genres OWNER TO pgw;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO pgw;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    edition_id integer NOT NULL,
    rating integer NOT NULL,
    review text,
    CONSTRAINT ratings_rating_check CHECK (((0 <= rating) AND (rating <= 5)))
);


ALTER TABLE public.ratings OWNER TO pgw;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO pgw;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO pgw;

--
-- Name: shelves; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.shelves (
    id integer NOT NULL,
    name public.citext NOT NULL,
    user_id integer NOT NULL,
    description text
);


ALTER TABLE public.shelves OWNER TO pgw;

--
-- Name: shelves_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.shelves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shelves_id_seq OWNER TO pgw;

--
-- Name: shelves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.shelves_id_seq OWNED BY public.shelves.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying NOT NULL,
    email public.citext NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    admin boolean DEFAULT false NOT NULL,
    CONSTRAINT login_size_limits CHECK (((length((login)::text) >= 3) AND ((admin AND (length((login)::text) <= 100)) OR ((NOT admin) AND (length((login)::text) <= 50)))))
);


ALTER TABLE public.users OWNER TO pgw;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: pgw
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO pgw;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgw
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors_books ALTER COLUMN id SET DEFAULT nextval('public.authors_books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books_genres ALTER COLUMN id SET DEFAULT nextval('public.books_genres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions ALTER COLUMN id SET DEFAULT nextval('public.editions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves ALTER COLUMN id SET DEFAULT nextval('public.editions_shelves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.shelves ALTER COLUMN id SET DEFAULT nextval('public.shelves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: authors_books_position_unique; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors_books
    ADD CONSTRAINT authors_books_position_unique UNIQUE (book_id, "position");


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: books_are_ordered_in_a_shelf; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves
    ADD CONSTRAINT books_are_ordered_in_a_shelf UNIQUE (shelf_id, "position");


--
-- Name: books_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books_genres
    ADD CONSTRAINT books_genres_pkey PRIMARY KEY (id);


--
-- Name: books_isbn_key; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: can_author_only_once; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors_books
    ADD CONSTRAINT can_author_only_once UNIQUE (book_id, author_id);


--
-- Name: editions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions
    ADD CONSTRAINT editions_pkey PRIMARY KEY (id);


--
-- Name: editions_shelves_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves
    ADD CONSTRAINT editions_shelves_pkey PRIMARY KEY (id);


--
-- Name: email_must_be_unique; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_must_be_unique UNIQUE (email);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- Name: one_book_once_in_a_shelf; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves
    ADD CONSTRAINT one_book_once_in_a_shelf UNIQUE (shelf_id, edition_id);


--
-- Name: one_review_per_edition; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT one_review_per_edition UNIQUE (edition_id, user_id);


--
-- Name: only_one_current_edition; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions
    ADD CONSTRAINT only_one_current_edition EXCLUDE USING btree (book_id WITH =) WHERE ((current = true));


--
-- Name: ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: shelves_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.shelves
    ADD CONSTRAINT shelves_pkey PRIMARY KEY (id);


--
-- Name: unique_shelves_per_user; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.shelves
    ADD CONSTRAINT unique_shelves_per_user UNIQUE (user_id, name);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: fast_user_editions_lookup; Type: INDEX; Schema: public; Owner: pgw
--

CREATE UNIQUE INDEX fast_user_editions_lookup ON public.ratings USING btree (user_id, edition_id);


--
-- Name: authors_books_belongs_to_author; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors_books
    ADD CONSTRAINT authors_books_belongs_to_author FOREIGN KEY (author_id) REFERENCES public.authors(id);


--
-- Name: authors_books_belongs_to_book; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.authors_books
    ADD CONSTRAINT authors_books_belongs_to_book FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: books_genres_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books_genres
    ADD CONSTRAINT books_genres_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: books_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books_genres
    ADD CONSTRAINT books_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(id);


--
-- Name: editions_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions
    ADD CONSTRAINT editions_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: editions_shelves_edition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves
    ADD CONSTRAINT editions_shelves_edition_id_fkey FOREIGN KEY (edition_id) REFERENCES public.editions(id);


--
-- Name: editions_shelves_shelf_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions_shelves
    ADD CONSTRAINT editions_shelves_shelf_id_fkey FOREIGN KEY (shelf_id) REFERENCES public.shelves(id);


--
-- Name: ratings_edition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_edition_id_fkey FOREIGN KEY (edition_id) REFERENCES public.editions(id);


--
-- Name: ratings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: shelves_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.shelves
    ADD CONSTRAINT shelves_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

