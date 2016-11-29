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
	Name text
	
);

CREATE TABLE matches (
	match_id serial PRIMARY KEY NOT NULL,
	winner int REFERENCES players(id),
	loser int REFERENCES players(id),
	total_matches int REFERENCES players(id)
);

CREATE VIEW wincounter
AS
  SELECT players.id,
         players.name,
         COUNT(matches.winner) AS wins,
         COUNT(matches) AS matches_played
  FROM   players
         LEFT JOIN matches
                ON players.id = matches.winner
  GROUP BY players.id;
