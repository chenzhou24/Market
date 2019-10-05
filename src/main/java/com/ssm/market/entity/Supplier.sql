-- auto Generated on 2019-06-20 17:00:44 
-- DROP TABLE IF EXISTS `supplier`; 
CREATE TABLE `supplier`(
    `id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `code` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'code',
    `name` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'name',
    `link_man` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'linkMan',
    `tel_num` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'telNum',
    `tax` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'tax',
    `create_date` DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'createDate',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`supplier`';
