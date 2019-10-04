CREATE TABLE ordericons
(
    
    iconid bigint(10) NOT NULL AUTO_INCREMENT,
    orderid bigint(20) unsigned, 
    iconsname varchar(500),
    ordericon_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(iconid,orderid),
    FOREIGN KEY (orderid) REFERENCES `order`(orderid)
)
