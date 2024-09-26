-- Create a single database to store all related tables
CREATE DATABASE movie_db;
USE movie_db;

-- Create Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    m_name VARCHAR(30),
    genres VARCHAR(30),
    reviews DECIMAL(3,1)
);

-- Create Actors table
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(30)
);

-- Create Movie_Actors junction table with foreign key constraints
CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    character_name VARCHAR(200),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);
-- Insert data into Movies table
INSERT INTO Movies (Movie_ID, M_Name, Genres, Reviews)
VALUES 
(1, 'The Shawshank Redemption', 'Drama, Crime', 9.3),
(2, 'The Godfather', 'Crime, Drama', 9.2),
(3, 'The Dark Knight', 'Action, Crime, Drama', 9.0),
(4, 'Inception', 'Action, Adventure, Sci-Fi', 8.8),
(5, 'Fight Club', 'Drama, Thriller', 8.8),
(6, 'Pulp Fiction', 'Crime, Drama', 8.9),
(7, 'Forrest Gump', 'Drama, Romance', 8.8),
(8, 'The Matrix', 'Action, Sci-Fi', 8.7),
(9, 'Interstellar', 'Adventure, Drama, Sci-Fi', 8.6),
(10, 'Gladiator', 'Action, Adventure, Drama', 8.5);

-- Insert data into Actors table
INSERT INTO Actors (Actor_ID, Actor_Name)
VALUES 
(1, 'Tim Robbins'),
(2, 'Morgan Freeman'),
(3, 'Marlon Brando'),
(4, 'Al Pacino'),
(5, 'Christian Bale'),
(6, 'Heath Ledger'),
(7, 'Leonardo DiCaprio'),
(8, 'Joseph Gordon-Levitt'),
(9, 'Brad Pitt'),
(10, 'Edward Norton'),
(11, 'John Travolta'),
(12, 'Samuel L. Jackson'),
(13, 'Tom Hanks'),
(14, 'Robin Wright'),
(15, 'Keanu Reeves'),
(16, 'Laurence Fishburne'),
(17, 'Matthew McConaughey'),
(18, 'Anne Hathaway'),
(19, 'Russell Crowe'),
(20, 'Joaquin Phoenix');

-- Insert data into Movie_Actors table
INSERT INTO Movie_Actors (Movie_ID, Actor_ID, Character_Name)
VALUES 
(1, 1, 'Andy Dufresne'),
(1, 2, 'Ellis Boyd "Red" Redding'),
(2, 3, 'Don Vito Corleone'),
(2, 4, 'Michael Corleone'),
(3, 5, 'Bruce Wayne/Batman'),
(3, 6, 'Joker'),
(4, 7, 'Dom Cobb'),
(4, 8, 'Arthur'),
(5, 9, 'Tyler Durden'),
(5, 10, 'The Narrator'),
(6, 11, 'Vincent Vega'),
(6, 12, 'Jules Winnfield'),
(7, 13, 'Forrest Gump'),
(7, 14, 'Jenny Curran'),
(8, 15, 'Neo'),
(8, 16, 'Morpheus'),
(9, 17, 'Cooper'),
(9, 18, 'Brand'),
(10, 19, 'Maximus'),
(10, 20, 'Commodus');


