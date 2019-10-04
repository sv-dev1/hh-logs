insert into gf.report(clientid,category,report_name,template_name,pdf_allowed,xls_allowed,privilegeid,custom_function,enabled)
values(NULL,'customer','Customer Email Addresses By Pricing Type','GFCustomerByPricingType.jrxml',1,1,NULL,NULL,1);

insert into gf.template_generic(templatename,modified,template)
values('GFCustomerByPricingType.jrxml',CURRENT_TIMESTAMP,'');

insert into gf.report_parameter(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from gf.report WHERE report_name='Customer Email Addresses By Pricing Type'),10,'on_or_after','From Date (yyyy-mm-dd)',0,'DatePicker','Date','Date',NULL);


insert into gf.report_parameter(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from gf.report WHERE report_name='Customer Email Addresses By Pricing Type'),20,'through','Through Date (yyyy-mm-dd)',0,'DatePicker','Date','Date',NULL);


insert into gf.report_parameter(reportid,display_sequence,parameter_name,prompt,required,input_type,validation_type,parameter_type,`sql`)
values((SELECT reportid from gf.report WHERE report_name='Customer Email Addresses By Pricing Type'),30,'pricingtypeid','Price List',1,'combo','BigInteger','String','SELECT pricingtypeid AS id, description AS `text` FROM pricing_type WHERE clientid={{clientid}} AND active=1 ORDER BY is_default DESC, description ASC
');
