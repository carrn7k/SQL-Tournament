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

create table players (
	id serial primary key,
	name text
);

create table match (
	id serial primary key,
	wins integer references players(id),
	losses integer references players(id)
);

CREATE VIEW standings AS
    SELECT players.id, players.name,
           count(match.wins) as win_total,
           (SELECT count(*) FROM match 
           	WHERE players.id = match.wins
           	OR players.id = match.losses)
    FROM players LEFT JOIN match
    ON players.id = match.wins
    GROUP BY players.id
    ORDER BY win_total DESC;
         
