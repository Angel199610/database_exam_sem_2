-- Director table
CREATE TABLE director (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255),
    experience_years INT,
    specialization VARCHAR(100)
);

-- TV Series table
CREATE TABLE tv_series (
    series_id INT PRIMARY KEY,
    series_name VARCHAR(255),
    genre VARCHAR(100)
);

-- Episode table
CREATE TABLE episode (
    episode_id INT PRIMARY KEY,
    series_id INT,
    episode_number INT,
    air_date DATE,
    director_id INT,
    FOREIGN KEY (series_id) REFERENCES tv_series(series_id),
    FOREIGN KEY (director_id) REFERENCES director(director_id)
);

-- Actor table
CREATE TABLE actor (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255),
    gender VARCHAR(10),
    date_of_birth DATE
);

-- Actor-Series relationship table
CREATE TABLE actor_series (
    actor_id INT,
    series_id INT,
    PRIMARY KEY (actor_id, series_id),
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
    FOREIGN KEY (series_id) REFERENCES tv_series(series_id)
);

-- Display TV Series
SELECT * FROM tv_series;

-- Display Episodes
SELECT * FROM episode;

-- Display Actors
SELECT * FROM actor;

-- Display Directors
SELECT * FROM director;

-- Display Actor-Series relationship
SELECT * FROM actor_series;
