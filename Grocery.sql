CREATE TABLE grocery(
id int primary key not null,
	name varchar(255) not null
);
CREATE TABLE customers(
id int primary key not null,
	name varchar(255) not null,
	address varchar(255) not null,
	contact int unique not null,
	password varchar(255) unique not null,
	grocery_id int NOT NULL,
	FOREIGN KEY (id) references grocery(id)                           
);
CREATE TABLE category(
id int primary key not null,
	name varchar(255) not null
);
CREATE TABLE vendors(
id int primary key not null,
	name varchar(255) not null,
	location varchar(255) not null,
	email varchar(255) not null,
	contact int unique not null,
	vendor_id int not null,
	FOREIGN KEY (id) references grocery(id)
);

CREATE TABLE products(
id int primary key not null,
	name varchar(255) not null,
	price int not null,
	description varchar(255) not null,
	posted_by varchar(255) not null,
	gocery_id int not null,
	FOREIGN KEY (id) references grocery(id),
	customer_id int not null,
	FOREIGN KEY (id) references customers(id),
	vendor_id int not null,
	FOREIGN KEY (id) references vendors(id)
);
CREATE TABLE Admin(
	id int primary key,
name varchar(255) not null,
contact varchar(255),
	grocery_id int not null,
	FOREIGN KEY (id) references grocery(id)	
);
CREATE TABLE Orders(
id int primary key not null,
	status varchar(255) not null,
	customer_id int not null,
	FOREIGN KEY (id) references customers(id),
	admin_id int not null,
	FOREIGN KEY (id) references Admin (id),
	vendor_id int not null,
	FOREIGN KEY (id) references vendors (id)	
);
 CREATE TABLE cake(
	 id int primary key not null,
 name varchar(255) not null,
	 price int not null,
	 category varchar(255) not null,
	 description varchar(255) not null,
	 recipes varchar(255) not null,
	 vendor_id int not null,
	 FOREIGN KEY (id) references vendors(id)
 );
 
 CREATE TABLE delivery(
 id int primary key not null,
	 name varchar(255) not null,
	 contact int not null,
	 email varchar(255) not null,
	 order_id int not null,
	 FOREIGN KEY (id) references Orders(id) 
 );


