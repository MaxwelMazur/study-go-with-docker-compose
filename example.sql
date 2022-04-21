-- down.sql
DROP TABLE items;
DROP EXTENSION pgcrypto;

-- up.sql
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
CREATE TABLE items(
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    name character varying NOT NULL
)