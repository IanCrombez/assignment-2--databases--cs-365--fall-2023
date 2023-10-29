DROP DATABASE IF EXISTS passwords;
CREATE DATABASE passwords DEFAULT CHARACTER SET utf8mb4;

Use passwords;

SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = UNHEX(SHA2('dinonuggets', 512));
SET @init_vector = RANDOM_BYTES(16);

CREATE TABLE web_site (
    id INT AUTO_INCREMENT,
    WEB_name VARCHAR(256) NOT NULL,
    WEB_url VARCHAR(256) NOT NULL,
    name_first VARCHAR(128) NOT NULL,
    name_last VARCHAR(128) NOT NULL,
    username VARCHAR(128) NOT NULL,
    email VARCHAR(256) NOT NULL,
    password VARBINARY(512) NOT NULL,
    comment TEXT,
    creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)   
);


INSERT INTO web_site (WEB_name, WEB_url, name_first, name_last, username, email, password, comment) VALUES
    ('TestSite', 'http://www.testsite.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1234', @key_str, @init_vector), 'WOO COMMENT LETS GOO'),
    ('TestSite2', 'http://www.testsite2.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1235', @key_str, @init_vector), 'WOO COMMENT LETS GOO'),
    ('TestSite3', 'http://www.testsite3.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1236', @key_str, @init_vector), 'WOO COMMENT LETS GOO'),
    ('TestSite4', 'http://www.testsite4.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1237', @key_str, @init_vector), 'WOO COMMENT LETS GOO');