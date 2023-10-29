DROP DATABASE IF EXISTS passwords;
CREATE DATABASE passwords;


Use passwords;

CREATE TABLE web_site (
    id INT AUTO_INCREMENT,
    WEB_name VARCHAR(256) NOT NULL,
    WEB_url VARCHAR(256) NOT NULL,
    name_first VARCHAR(128) NOT NULL,
    name_last VARCHAR(128) NOT NULL,
    username VARCHAR(128) NOT NULL,
    email VARCHAR(256) NOT NULL,
    password VARCHAR(128) NOT NULL,
    comment TEXT,
    creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)   
);


