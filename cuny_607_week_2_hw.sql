DROP DATABASE IF EXISTS movie_reviews;

CREATE DATABASE movie_reviews DEFAULT CHARACTER SET utf8;

USE movie_reviews;

CREATE TABLE movie (
	movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    
    PRIMARY KEY(movie_id)
    ) ENGINE = InnoDB;

CREATE TABLE critic (
	critic_id INT NOT NULL AUTO_INCREMENT,
    critic_name VARCHAR(255),
    
    PRIMARY KEY(critic_id)
    ) ENGINE = InnoDB;

CREATE TABLE review (
	
    movie_id INT,
    critic_id INT,
    movie_rating FLOAT,
    
    CONSTRAINT FOREIGN KEY(movie_id)
		REFERENCES movie (movie_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	
    CONSTRAINT FOREIGN KEY(critic_id)
		REFERENCES critic (critic_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    PRIMARY KEY(movie_id, critic_id)
	
    ) ENGINE = InnoDB;

INSERT INTO movie (title)
	VALUES ('Acquaman');
INSERT INTO movie (title)
	VALUES ('Black Panther');
INSERT INTO movie (title)
	VALUES ('The Greatest Showman');
INSERT INTO movie (title)
	VALUES ('Ready Player One');
INSERT INTO movie (title)
	VALUES ('Mary Poppins Returns');
INSERT INTO movie (title)
	VALUES ('Annihilation');

INSERT INTO critic (critic_name)
	VALUES ('Aaron');
INSERT INTO critic (critic_name)
	VALUES ('Beverly');
INSERT INTO critic (critic_name)
	VALUES ('Charlie');
INSERT INTO critic (critic_name)
	VALUES ('Dolores');
INSERT INTO critic (critic_name)
	VALUES ('Edward');

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (1, 1, 3.1);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (1, 2, 3.9);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (1, 3, 3.9);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (1, 4, 3.1);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (1, 5, 3.5);

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (2, 1, 4.8);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (2, 2, 4.6);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (2, 3, 4.1);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (2, 4, 5.0);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (2, 5, 5.0);

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (3, 1, 1.6);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (3, 2, 2.3);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (3, 3, 2.0);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (3, 4, 2.3);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (3, 5, 1.8);

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (4, 1, 2.5);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (4, 2, 3.1);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (4, 3, 3.8);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (4, 4, 3.7);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (4, 5, 3.8);

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (5, 1, 3.7);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (5, 2, 3.5);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (5, 3, 3.5);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (5, 4, 2.6);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (5, 5, 3.1);

INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (6, 1, 4.8);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (6, 2, 3.1);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (6, 3, 4.3);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (6, 4, 4.2);
INSERT INTO review (movie_id, critic_id, movie_rating)
	VALUES (6, 5, 4.1);
