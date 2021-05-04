CREATE DATABASE nfl;

USE nfl;

CREATE TABLE teams (
id INT AUTO_INCREMENT,
location VARCHAR(255),
mascot VARCHAR(255),
abbreviation VARCHAR(4),
conference ENUM('AFC', 'NFC'),
division ENUM('North', 'South', 'East', 'West'),
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
deletedAt DATETIME,
PRIMARY KEY (id)
);

SHOW TABLES;

SELECT * FROM teams;  

INSERT INTO teams (location, mascot, abbreviation, conference, division) VALUES

('Buffalo','Bills','BUF','AFC','East'),
('Miami','Dolphins','MIA','AFC','East'),
('New England', 'Patriots', 'NE', 'AFC', 'East'),
('New York', 'Jets', 'NYJ', 'AFC', 'East'),
('Baltimore', 'Ravens', 'BAL', 'AFC', 'North'),
('Cincinnati', 'Bengals', 'CIN', 'AFC', 'North'),
('Cleveland', 'Browns', 'CLE', 'AFC', 'North'),
('Pittsburgh', 'Steelers', 'PIT', 'AFC', 'North'),
('Houston', 'Texans', 'HOU', 'AFC', 'South'),
('Pittsburgh', 'Steelers', 'PIT', 'AFC', 'North'),
('Indianapolis', 'Colts', 'IND', 'AFC', 'North'),
('Jacksonville', 'Jaguars', 'JAX', 'AFC', 'North'),
('Tennessee', 'Titans', 'TEN', 'AFC', 'North'),
('Denver', 'Broncos', 'DEN', 'AFC', 'North'),
('Kansas City', 'Chiefs', 'KC', 'AFC', 'North'),
('Los Angeles', 'Chargers', 'LAC', 'AFC', 'West'),
('Oakland', 'Raiders', 'OAK', 'AFC', 'West'),
('Dallas', 'Cowboys', 'DAL', 'NFC', 'East'),
('New York', 'Giants', 'NYG', 'NFC', 'East'),
('Philadelphia', 'Eagles', 'PHI', 'NFC', 'East'),
('Washington','Football Team','WSH','NFC','East'),
('Chicago','Bears','CHI','NFC','North'),
('Detriot','Lions','DET','NFC','North'),
('Green Bay','Packers','GB','NFC','North'),
('Minnesota','Vikins','MIN','NFC','North'),
('Atlanta','Falcons','ATL','NFC','South'),
('Carolina','Panthers','CAR','NFC','South'),
('New Orleans','Saints','NO','NFC','South'),
('Tampa Bay','Buccaneers','TB','NFC','South'),
('Arizona','Cardinals','ARI','NFC','West'),
('Los Angeles','Rams','LAR','NFC','West'),
('San Francisco','49ers','SF','NFC','West'),
('Seattle','Seahawks','SEA','NFC','West');

SELECT * from teams;







