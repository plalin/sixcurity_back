/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `username` VARCHAR(128) NOT NULL PRIMARY KEY,
  `nickname` TEXT NOT NULL,
  `hashed_password` TEXT NOT NULL)
 ENGINE=InnoDB;

