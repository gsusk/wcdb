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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 454, 455, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (34, 456, 457, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (35, 455, 457, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (36, 454, 456, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (37, 455, 458, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 457, 459, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 456, 460, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 454, 461, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 457, 462, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 459, 463, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 456, 464, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 460, 465, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 455, 466, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 458, 467, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 461, 468, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 454, 469, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 470, 469, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (50, 471, 460, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (51, 469, 471, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (52, 470, 460, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (53, 471, 472, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 469, 456, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 460, 462, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 470, 454, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 460, 473, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 462, 461, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 454, 474, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 470, 475, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 471, 465, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 472, 476, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 469, 463, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 456, 477, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 454);
INSERT INTO public.teams VALUES ('Croatia', 455);
INSERT INTO public.teams VALUES ('Belgium', 456);
INSERT INTO public.teams VALUES ('England', 457);
INSERT INTO public.teams VALUES ('Russia', 458);
INSERT INTO public.teams VALUES ('Sweden', 459);
INSERT INTO public.teams VALUES ('Brazil', 460);
INSERT INTO public.teams VALUES ('Uruguay', 461);
INSERT INTO public.teams VALUES ('Colombia', 462);
INSERT INTO public.teams VALUES ('Switzerland', 463);
INSERT INTO public.teams VALUES ('Japan', 464);
INSERT INTO public.teams VALUES ('Mexico', 465);
INSERT INTO public.teams VALUES ('Denmark', 466);
INSERT INTO public.teams VALUES ('Spain', 467);
INSERT INTO public.teams VALUES ('Portugal', 468);
INSERT INTO public.teams VALUES ('Argentina', 469);
INSERT INTO public.teams VALUES ('Germany', 470);
INSERT INTO public.teams VALUES ('Netherlands', 471);
INSERT INTO public.teams VALUES ('Costa Rica', 472);
INSERT INTO public.teams VALUES ('Chile', 473);
INSERT INTO public.teams VALUES ('Nigeria', 474);
INSERT INTO public.teams VALUES ('Algeria', 475);
INSERT INTO public.teams VALUES ('Greece', 476);
INSERT INTO public.teams VALUES ('United States', 477);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 477, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

