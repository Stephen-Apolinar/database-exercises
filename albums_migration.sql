USE codeup_test_db;
DROP TABLE IF EXISTS albums;


CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    record_name  VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales INT UNSIGNED,
    genre VARCHAR(50) DEFAULT 'NONE',
    PRIMARY KEY (id)

);

SHOW TABLES;
DESCRIBE albums;
SHOW CREATE TABLE albums\G