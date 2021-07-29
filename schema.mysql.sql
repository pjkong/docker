CREATE TABLE tbl_person (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(128) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL
);
SET @name = "test";
SET @pass = "pass";
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 10 DO
    INSERT INTO tbl_user (username, password, email) VALUES (concat(@name, i), SHA2(concat(@pass, i), 256), @name + i +'@example.com');
  SET i = i + 1;
  END WHILE;
END;

