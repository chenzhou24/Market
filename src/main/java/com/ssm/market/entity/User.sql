-- auto Generated on 2019-08-01 22:01:33 
-- DROP TABLE IF EXISTS `user`; 
CREATE TABLE `user`(
    `id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'name',
    `password` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'password',
    `gender` INT (11) NOT NULL DEFAULT -1 COMMENT 'gender',
    `age` INT (11) NOT NULL DEFAULT -1 COMMENT 'age',
    `tel_number` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'telNumber',
    `type` INT (11) NOT NULL DEFAULT -1 COMMENT 'type',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`user`';
