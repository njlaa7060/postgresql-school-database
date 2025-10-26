--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
-- Name: Teacher ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Teacher " (
    name character varying NOT NULL,
    email character varying NOT NULL,
    "password " character varying NOT NULL
);


ALTER TABLE public."Teacher " OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id integer GENERATED ALWAYS AS ((+ 1)) STORED NOT NULL,
    date date NOT NULL,
    attendance_percentage character varying NOT NULL,
    active_percentage character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: Teacher ; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Teacher " (name, email, "password ") FROM stdin;
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (date, attendance_percentage, active_percentage, name) FROM stdin;
2024-06-02	100.0	0.0	Sara
\.


--
-- Name: Teacher  Teacher _pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teacher "
    ADD CONSTRAINT "Teacher _pkey" PRIMARY KEY (email);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

