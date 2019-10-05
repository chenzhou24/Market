-- auto Generated on 2019-06-25 19:12:24 
-- DROP TABLE IF EXISTS `bill`; 
CREATE TABLE `bill`(
    `id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `goods_name` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'goodsName',
    `amount` INT (11) NOT NULL DEFAULT -1 COMMENT 'amount',
    `status` INT (11) NOT NULL DEFAULT -1 COMMENT 'status',
    `created_time` DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'createdTime',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`bill`';
