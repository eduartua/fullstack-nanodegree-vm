-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP TABLE tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE players (
	name text,
	loss integer,
	wins integer,
	id serial PRIMARY KEY
);

CREATE TABLE matches (
	winner integer NOT NULL REFERENCES players(id),
	loser integer NOT NULL REFERENCES players(id),
	id serial PRIMARY KEY
	CHECK (winner != loser)
);