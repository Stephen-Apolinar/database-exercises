USE codeup_test_db;
DROP TABLE IF EXISTS albums;


CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(250) DEFAULT 'NONE',
    record_name  VARCHAR(100) NOT NULL,
    release_date INT NOT NULL,
    genre VARCHAR(50) DEFAULT 'NONE',
    sales FLOAT NOT null,
    PRIMARY KEY (id)

);

SHOW TABLES;
DESCRIBE albums;
SHOW CREATE TABLE albums\G