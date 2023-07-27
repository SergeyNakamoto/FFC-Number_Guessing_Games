--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guess integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 5, 1);
INSERT INTO public.games VALUES (4, 10, 1);
INSERT INTO public.games VALUES (5, 751, 2);
INSERT INTO public.games VALUES (6, 890, 2);
INSERT INTO public.games VALUES (7, 547, 3);
INSERT INTO public.games VALUES (8, 225, 3);
INSERT INTO public.games VALUES (9, 810, 2);
INSERT INTO public.games VALUES (10, 476, 2);
INSERT INTO public.games VALUES (11, 466, 2);
INSERT INTO public.games VALUES (12, 653, 4);
INSERT INTO public.games VALUES (13, 949, 4);
INSERT INTO public.games VALUES (14, 1, 5);
INSERT INTO public.games VALUES (15, 744, 5);
INSERT INTO public.games VALUES (16, 293, 4);
INSERT INTO public.games VALUES (17, 159, 4);
INSERT INTO public.games VALUES (18, 383, 4);
INSERT INTO public.games VALUES (19, 19, 1);
INSERT INTO public.games VALUES (20, 1, 6);
INSERT INTO public.games VALUES (21, 349, 6);
INSERT INTO public.games VALUES (22, 206, 7);
INSERT INTO public.games VALUES (23, 515, 7);
INSERT INTO public.games VALUES (24, 985, 6);
INSERT INTO public.games VALUES (25, 123, 6);
INSERT INTO public.games VALUES (26, 20, 6);
INSERT INTO public.games VALUES (27, 97, 8);
INSERT INTO public.games VALUES (28, 169, 8);
INSERT INTO public.games VALUES (29, 845, 9);
INSERT INTO public.games VALUES (30, 508, 9);
INSERT INTO public.games VALUES (31, 929, 8);
INSERT INTO public.games VALUES (32, 8, 8);
INSERT INTO public.games VALUES (33, 873, 8);
INSERT INTO public.games VALUES (34, 188, 10);
INSERT INTO public.games VALUES (35, 467, 10);
INSERT INTO public.games VALUES (36, 476, 11);
INSERT INTO public.games VALUES (37, 223, 11);
INSERT INTO public.games VALUES (38, 881, 10);
INSERT INTO public.games VALUES (39, 106, 10);
INSERT INTO public.games VALUES (40, 723, 10);
INSERT INTO public.games VALUES (41, 575, 12);
INSERT INTO public.games VALUES (42, 353, 12);
INSERT INTO public.games VALUES (43, 255, 13);
INSERT INTO public.games VALUES (44, 613, 13);
INSERT INTO public.games VALUES (45, 994, 12);
INSERT INTO public.games VALUES (46, 234, 12);
INSERT INTO public.games VALUES (47, 240, 12);
INSERT INTO public.games VALUES (48, 92, 14);
INSERT INTO public.games VALUES (49, 221, 14);
INSERT INTO public.games VALUES (50, 614, 15);
INSERT INTO public.games VALUES (51, 18, 15);
INSERT INTO public.games VALUES (52, 932, 14);
INSERT INTO public.games VALUES (53, 699, 14);
INSERT INTO public.games VALUES (54, 731, 14);
INSERT INTO public.games VALUES (55, 636, 16);
INSERT INTO public.games VALUES (56, 887, 16);
INSERT INTO public.games VALUES (57, 53, 17);
INSERT INTO public.games VALUES (58, 275, 17);
INSERT INTO public.games VALUES (59, 977, 16);
INSERT INTO public.games VALUES (60, 291, 16);
INSERT INTO public.games VALUES (61, 556, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'TUAN');
INSERT INTO public.users VALUES (2, 'user_1690446306887');
INSERT INTO public.users VALUES (3, 'user_1690446306886');
INSERT INTO public.users VALUES (4, 'user_1690446359791');
INSERT INTO public.users VALUES (5, 'user_1690446359790');
INSERT INTO public.users VALUES (6, 'user_1690446458257');
INSERT INTO public.users VALUES (7, 'user_1690446458256');
INSERT INTO public.users VALUES (8, 'user_1690447271123');
INSERT INTO public.users VALUES (9, 'user_1690447271122');
INSERT INTO public.users VALUES (10, 'user_1690450020200');
INSERT INTO public.users VALUES (11, 'user_1690450020199');
INSERT INTO public.users VALUES (12, 'user_1690450392410');
INSERT INTO public.users VALUES (13, 'user_1690450392409');
INSERT INTO public.users VALUES (14, 'user_1690450489114');
INSERT INTO public.users VALUES (15, 'user_1690450489113');
INSERT INTO public.users VALUES (16, 'user_1690450570843');
INSERT INTO public.users VALUES (17, 'user_1690450570842');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 61, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

