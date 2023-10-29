--new entry
INSERT INTO web_site (WEB_name, WEB_url, name_first, name_last, username, email, password, comment) VALUES
    ('INSERTEDSITE', 'https://www.insert.com', 'Code', 'Warrior', 'code-warrior', 'spooky@hartofrd.edu', AES_ENCRYPT('cs-365', @key_str, @init_vector), 'this was the inserted webiset from the command');
--get password
SELECT CAST(AES_DECRYPT(password, @key_str, @init_vector)AS CHAR) AS real_password FROM web_site WHERE WEB_url = 'http://www.testsite.com';
--get all data from https sites
SELECT *, CAST(AES_DECRYPT(password, @key_str, @init_vector)AS CHAR) AS real_password FROM web_site WHERE WEB_url LIKE 'https://%';
--change a url of an entry based on password
UPDATE web_site SET WEB_url = 'http://www.updatingSiteBasedonPassword.com' WHERE password = AES_ENCRYPT('1235', @key_str, @init_vector);
--change any password

--remove a url

--remove a password