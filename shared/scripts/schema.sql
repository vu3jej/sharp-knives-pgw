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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: pgw
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.books OWNER TO pgw;

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
    book_id integer
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
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions ALTER COLUMN id SET DEFAULT nextval('public.editions_id_seq'::regclass);


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: editions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions
    ADD CONSTRAINT editions_pkey PRIMARY KEY (id);


--
-- Name: editions_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pgw
--

ALTER TABLE ONLY public.editions
    ADD CONSTRAINT editions_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


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

