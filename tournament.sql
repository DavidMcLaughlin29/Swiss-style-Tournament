-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;


CREATE TABLE players (
	id serial PRIMARY KEY NOT NULL,
	Name text,
	num_wins integer DEFAULT 0,
	num_matches int DEFAULT 0
);

CREATE TABLE matches (
	match_id serial PRIMARY KEY NOT NULL,
	winner int,
	loser int 

);

CREATE VIEW wins_sorted_view AS SELECT id , name, num_wins , 
	num_matches FROM Players ORDER BY num_wins DESC; 