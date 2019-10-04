alter table `order` add column `can_change_order` tinyint default 1

ALTER TABLE `wholesale_user` ADD `customer_services` tinyint(1) NOT NULL DEFAULT '0' AFTER `create_customer`;
ALTER TABLE `wholesale_user` ADD `can_order_editable` tinyint(1) NOT NULL DEFAULT '1' AFTER `customer_services`;
alter table `order` ADD  `can_change_order` tinyint(1) NOT NULL default 1;

alter table `wholesale_user` drop column can_order_editable;
ALTER TABLE `wholesale_user` ADD `can_order_editable` tinyint(1) NOT NULL DEFAULT '0' AFTER `customer_services`;


 ALTER TABLE `customer` ADD `shipmethodid` bigint(20) unsigned NULL DEFAULT '4';
 alter table customer ADD CONSTRAINT `f_k` FOREIGN KEY(shipmethodid) REFERENCES shipmethod(shipmethodid) ON DELETE NO ACTION ON UPDATE NO ACTION;


 ALTER TABLE `category` ADD `shop_now_active` tinyint(2) NULL DEFAULT '0';
 ALTER TABLE `category` ADD `shop_now_name` varchar(255) NULL;


 select max(shiphistoryid) from ship_history;

update `order` set packslip_printed = now() where orderid=1399562;
update ship_history set orderid=1399562 where shiphistoryid=384226;

ALTER TABLE gf.customer ADD COLUMN shipmethodid bigint(20) NOT NULL SET DEFAULT 4,ADD FOREIGN KEY (shipmethodid) REFERENCES gf.shipmethod(shipmethodid) AFTER 'partnerid';


ALTER TABLE `wholesale_entity`
ADD `olark_status` tinyint(1) NOT NULL DEFAULT '0'; //HOOV-248

----------------------------------------------------------------------------------------------------------------------------------------------------
important queries:-----
SELECT orderid, COUNT(orderid) , amount FROM order_transaction where check_number=2836294 GROUP BY orderid HAVING COUNT(orderid) > 1

DELETE t1 FROM order_transaction t1 INNER JOIN order_transaction t2 WHERE t1.ordertransactionid > t2.ordertransactionid AND t1.orderid = t2.orderid and t2.check_number='2836294';


SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `customer`
ADD `shipmethodid` bigint(20) unsigned NULL DEFAULT '4';

Alter table customer ADD CONSTRAINT `f_k` FOREIGN KEY(shipmethodid) REFERENCES shipmethod(shipmethodid) ON DELETE NO ACTION ON UPDATE NO ACTION;

http://localhost:9370/partner/orders.html?customerid=1118271
------------------------------------------------------------------------------------------------------------------------------------------------

