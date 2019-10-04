CREATE TABLE product_characteristics
(
    	productid bigint(20) unsigned,

	egg_color_Blue boolean,
	egg_color_Brown boolean, 
	egg_color_Cream boolean, 
	egg_color_Dark_Brown boolean, 
	egg_color_Olive boolean,  
	egg_color_White boolean,  
	
	egg_size_Small boolean,
	egg_size_Medium boolean,
	egg_size_Large boolean,
	egg_size_XLarge  boolean,

	 egg_per_year_100_150 boolean,
	 egg_per_year_150_200 boolean,
	 egg_per_year_200_250 boolean,
	 egg_per_year_250_300 boolean,

	 Winter_Hardy boolean,
	 Warm_Climate_Hardy boolean,
	 Breeds_True boolean,
	Heritage boolean,
	Free_Ranges_Best  boolean,

    PRIMARY KEY(productid),
    FOREIGN KEY (productid) REFERENCES product(productid)
)


