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
    ('TestSite2', 'http://www.testsite2.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1235', @key_str, @init_vector), 'WOO COMMENT35434r LETS GOO'),
    ('TestSite3', 'http://www.testsite3.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1236', @key_str, @init_vector), 'WOO CO78084asdfMMENT LETS GOO'),
    ('TestSite4', 'http://www.testsite4.com', 'Ian', 'Crombez', 'testuser', 'dontusethis@att.net', AES_ENCRYPT('1237', @key_str, @init_vector), 'WOO COM777MENT LETS GOO'),
    ('TestSite3', 'https://www.discord.com', 'Ian', 'Crombez', 'iac009', 'somethings@att.net', AES_ENCRYPT('password', @key_str, @init_vector), 'WOO COcasvc MENT LETS GOO'),
    ('TestSite3', 'https://www.amazon.com', 'Ian', 'Crombez', 'chicken', 'chicken@att.net', AES_ENCRYPT('chicken', @key_str, @init_vector), 'WOO COMMEN77 L77E23rtTS GOO'),
    ('TestSite3', 'http://www.google.com', 'Ian', 'Crombez', '1234', 'dontusethis@gmail.net', AES_ENCRYPT('henumbers', @key_str, @init_vector), 'WOO 777 LETS GOO'),
    ('TestSite3', 'http://www.gamesite.com', 'Ian', 'Crombez', 'nevernot', 'dontusethis@att.net', AES_ENCRYPT('eatpie', @key_str, @init_vector), 'WOO COM346MEfNT LETS GOO'),
    ('TestSite3', 'http://www.steam.com', 'Ian', 'Crombez', 'alawys', 'dontusethis@att.net', AES_ENCRYPT('runningOutOfIdeas', @key_str, @init_vector), 'WOOdsawef COMMENT LETS GOO'),
    ('TestSite3', 'http://www.lastone.com', 'Ian', 'Crombez', 'username', 'dontusethis@att.net', AES_ENCRYPT('LastOne', @key_str, @init_vector), 'WOO COMMENT LETS GOO');