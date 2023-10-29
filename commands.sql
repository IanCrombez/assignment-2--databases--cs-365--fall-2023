--new entry
INSERT INTO web_site (WEB_name, WEB_url, name_first, name_last, username, email, password, comment) VALUES
    ('INSERTEDSITE', 'http://www.insert.com', 'Code', 'Warrior', 'code-warrior', 'spooky@hartofrd.edu', AES_ENCRYPT('cs-365', @key_str, @init_vector), 'this was the inserted webiset from the command');
--get password

--get all data from https sites

--change a url of an entry

--change any password

--remove a url

--remove a password