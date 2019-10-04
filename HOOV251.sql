insert into `report`(clientid,category,report_name,template_name,pdf_allowed,xls_allowed,privilegeid,custom_function,enabled)
values(NULL,'customer','Prospect','GFProspectStatus.jrxml',1,1,NULL,NULL,1)

insert into `template_generic`(templatename,modified,template)
values('GFProspectStatus.jrxml',CURRENT_TIMESTAMP,'');
insert into gf.report_parameter(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from gf.report WHERE report_name='Prospect'),10,'on_or_after','From Date (yyyy-mm-dd)',0,'DatePicker','Date','Date',NULL);


insert into gf.report_parameter(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from gf.report WHERE report_name='Prospect'),20,'through','Through Date (yyyy-mm-dd)',0,'DatePicker','Date','Date',NULL);



insert into `report_parameter`(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from `report` WHERE report_name='Prospect'),30,'all prospect','Leave blank to get all prospects',0,'label','String','String',NULL);

ALTER TABLE gf.customer ADD COLUMN `prospect_status` tinyint(1) NOT NULL DEFAULT 0 AFTER `shipmethodid`;

ALTER TABLE `customer`
ADD `sell_chicks` tinyint(1) unsigned NULL AFTER `prospect_status`,
ADD `if_sell_purchase_from` varchar(255) COLLATE 'latin1_swedish_ci' NULL AFTER `sell_chicks`,
ADD `hardware_store` varchar(255) COLLATE 'latin1_swedish_ci' NULL AFTER `if_sell_purchase_from`,
ADD `yearly_qty` varchar(255) NULL AFTER `hardware_store`;
ADD `chickthink` BIGINT(20) NULL AFTER `yearly_qty`;

