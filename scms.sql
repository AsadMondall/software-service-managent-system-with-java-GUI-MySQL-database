----1.----
   CREATE TABLE _admin(
    admin_id INT PRIMARY KEY,
	admin_name VARCHAR(100),
    admin_pass VARCHAR(50),
	age INT,
	gender VARCHAR(100),
	city VARCHAR(100),
	joining_date DATE
	
	 );
	 
	INSERT INTO _admin(admin_id,admin_name,admin_pass,age,gender,city,joining_date)
	VALUES 
	('101','salva','#*12ASqq',' 25','male','madrid','2022-1-1'),
	('102','sergio','#*12A2233',' 26','male','tokyo','2022-2-1'),
	('103','denver','#*12oreq',' 26','male','nairobi','2021-1-5'),
	('104','alice','#*342ffq',' 25','female','berlin','2020-12-1'),
	('105','tamaya','#*542hhqq',' 27','male','london','2022-4-1');
	
	
	
	
-------2.--------
	CREATE TABLE customer(
    customer_id INT PRIMARY KEY ,
    customer_name VARCHAR(100),
    password VARCHAR(50),
	admin_id INT,
	age INT,
	gender VARCHAR(100),
	city VARCHAR(100),
	email VARCHAR(100),
	FOREIGN KEY(admin_id ) REFERENCES _admin(admin_id )
	 );
	 
	INSERT INTO customer(customer_id,customer_name,password,admin_id,age,gender,city,email)
	VALUES 
	('1','asad','#*gaeq22','101','20','male','dhaka','asad1122@gmail.com'),  
	('2','tanvir','#*sff33','101','22','male','rajshai','tr3213@gmail.com'),
	('3','zakir','#*dafreq','101','21','male','barishal','zk4455@gmail.com'),
	('4','ashik','#*rrf33fq','101','19','male','khulan','as213@gmail.com'),
	('5','rabbi','#*hd321qq','101','18','male','jashore','ra4554@gmail.com');
	
	
	
	
	
	------------3.-----------
	
	CREATE TABLE software(
    software_id INT PRIMARY KEY,
    software_name VARCHAR(100),
    software_category VARCHAR(50),
	latest_version VARCHAR(50),
	realese_date DATE
	
	 );
	 
	INSERT INTO software(software_id,software_name,software_category,latest_version,realese_date)
	VALUES 
	('1201',' Photoshop','Graphics','24.0','2022-10-01'),                  
    ('1202',' Illustrator','Graphics','17.0','2022-10-18'),
	('1203',' Acrobat DC','Graphics','21.007.20099','2021-12-21'),                  
    ('1204',' Lightroom','Graphics','6.1','2022-12-01'),
	('1205',' Dreamweaver','web design','21.2','2021-10-01'), 
    ('1206',' ColdFusion','web design','21.0','2022-10-01'),                 
    ('1207',' Premiere Pro','vedio editing','22.5','2022-06-01'),
	('1208',' After Effects','VFX','22.5','2022-06-01'), 
	
    ('1209',' Chrome','Browser','108.0.5359.124','10/01/2022'),
	('1210',' Firefox','Browser','108.0.1','2022-12-13'),
	
	('1211',' Zoom','vedio communications','5.13','2022-12-20'),
	('1212',' Google Meet','vedio communications','99.0.0','2022-11-15'),
	
	
	('1213',' Java','programming language','19','2022-09-01'),
	('1214',' Python','programming language','3.11.1','2022-12-06'),
	('1215',' Javascripts','programming language','ECMAScript 2022','2021-07-22'),
	('1216',' Solidity','programming language','0.8.0 ','2022-12-20'),
	('1217',' Windows','Operating System','11 ','2021-10-05'),
	('1218',' Linux','Operating System','11 ','2022-12-11'),
	('1219',' Mac OS','Operating System','11 ','2022-10-25');
     
	 
	 -------4.----------
	
    CREATE TABLE System_requirements(
    software_id INT ,
	Processor VARCHAR(100),
	RAM  VARCHAR(50),
	Hard_disk VARCHAR(100),
	Monitor_resolution VARCHAR(100),
	GPU  VARCHAR(100),
	installation_link VARCHAR(100),
	FOREIGN KEY(software_id) REFERENCES software(software_id)
	 );
	 
	INSERT INTO System_requirements(software_id,Processor,RAM,Hard_disk,Monitor_resolution,GPU,installation_link)
	VALUES 
	('1201','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/photoshop/free-trial-download.html'),
	('1202','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/illustrator/free-trial-download.html'),
	('1203','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://get.adobe.com/reader/'),
	('1204','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/photoshop-lightroom/free-trial-download.html'),
	('1205','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/dreamweaver/free-trial-download.html'),
	('1206','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/coldfusion-standard.html'),
	('1207','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/premiere/free-trial-download.html'),
	('1208','i5 or Ryzen5','8GB','2GB','1920 x 1080','4GB','https://www.adobe.com/products/aftereffects/free-trial-download.html'),
	
	('1209','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://www.google.com/chrome/'),
	('1210','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://www.mozilla.org/en-US/firefox/new/'),
	
	('1211','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://zoom.us/'),
	('1212','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://meet.google.com/'),
	
	('1213','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://www.oracle.com/java/technologies/downloads/'),
	('1214','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://www.python.org/downloads/'),
	('1215','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://nodejs.org/en/download/'),
	('1216','i3 or Ryzen3','4GB','2GB','1024 x 768 ','DirectX 9 Compatible','https://ethereum.org/en/developers/tutorials/'),
	('1217','i3 or Ryzen3','4GB','2GB','1024 x 768 ','Compatible with DirectX 12','https://www.microsoft.com/en-us/windows/?r=1'),
    ('1218','i3 or Ryzen3','2GB','5GB','1024 x 768 ','Compatible with DirectX 12','https://www.linux.org/pages/download/'),
	('1219','M1 Chip or better','8GB','256GB','1024 x 768 ',' macOS Catalina 10.15. 1 OR AMD Radeon RX 5700','https://support.apple.com/downloads/macos');

	
	
	--------5.--------- ///////
	CREATE TABLE Membership(
    membership_id INT PRIMARY KEY,
	customer_id INT,
	software_id INT,
	software_name VARCHAR(100),
	cost VARCHAR(100),
	membership_duration VARCHAR(100),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(software_id) REFERENCES software(software_id)
	 );
	 
	INSERT INTO Membership(membership_id,customer_id,software_id,software_name,cost,membership_duration)
	VALUES 
	('111','1','1201',' Photoshop','200$','1year'),
	('222','2','1204','Lightroom','100$','1year'),
	('333','3','1208','After Effects','100$','6months'),
	('444','4','1205','Dreamweaver','200$','1year'),
	('555','5','1207','Premiere Pro','250$','1year');
	
	
	-------6.----------/////
	CREATE TABLE Payment_method(
    payment_id INT PRIMARY KEY,
	customer_id INT,
	software_id INT,
	total_cost VARCHAR(100),
	payment_by VARCHAR(100),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(software_id) REFERENCES software(software_id)
	 );
	 
	INSERT INTO Payment_method(payment_id,customer_id,software_id,total_cost,payment_by)
	VALUES 
	('11122','1','1201','200$','bkash'),
	('11123','2','1204','100$','nagad'),
	('11124','3','1208','100$','rocket'),
	('11125','4','1207','200$','upai'),
	('11126','5','1202','250$','dbbl');
	
	----------7.------- /////
	CREATE TABLE expenditure(
    expenditure_id INT PRIMARY KEY,
	customer_id INT,
	customer_name VARCHAR(100),
	software_id INT,
	software_name VARCHAR(100),
	cost VARCHAR(100),
	membership_duration VARCHAR(100),
	status VARCHAR(100),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(software_id) REFERENCES software(software_id)
	 );
	 
	INSERT INTO expenditure(expenditure_id,customer_id,customer_name,software_id,software_name,cost,membership_duration,status)
	VALUES 
	('2233','1','asad','1201','Photoshop','200$','1year','purchased'),
	('2244','2','tanvir','1204','Lightroom','100$','1year','cancelled'),
	('2255','3','zakir','1208','After Effects','100$','6months','cancelled'),
	('2266','4','ashik','1207','Premiere Pro','200$','1year','purchased'),
	('2277','5','rabbi','1202','Illustrator','250$','1year','purchased');
	
	
	-------8.---------
	CREATE TABLE Developer_company(
    company_id INT PRIMARY KEY,
	company_name VARCHAR(100),
	software_id INT,
	headquaters_location VARCHAR(100),
	foundation_year YEAR,
	websites VARCHAR(100),
	FOREIGN KEY(software_id) REFERENCES software(software_id)
	 );
	 
	INSERT INTO Developer_company(company_id,company_name,software_id,headquaters_location,foundation_year,websites)
	VALUES 
	('25783','Adobe Inc.','1201','san jose california, usa','1982','www.adobe.com'),
	('25784','Adobe Inc.','1202','san jose california, usa','1982','www.adobe.com'),
	('25785','Adobe Inc.','1203','san jose california, usa','1982','www.adobe.com'),
	('25786','Adobe Inc.','1204','san jose california, usa','1982','www.adobe.com'),
	('25787','Adobe Inc.','1205','san jose california, usa','1982','www.adobe.com'),
	('25788','Adobe Inc.','1206','san jose california, usa','1982','www.adobe.com'),
	('25789','Adobe Inc.','1207','san jose california, usa','1982','www.adobe.com'),
	('25790','Adobe Inc.','1208','san jose california, usa','1982','www.adobe.com'),
	
	('25791','Google','1209','Mountain View, California, usa','1998','www.google.com/chrome'),
	('25792','Mozila corporation','1210','san jose california, usa','2004','www.mozilla.org/en-US/firefox'),

	
	('25793','Zoom Video Communications,Inc.','1211','san jose california, usa','2011','www.zoom.us'),
	
	('25794','Google','1212','Mountain View, California, usa','2017','meet.google.com'),
	

	('25795','Oracle corporation','1213','Austin, Texus, usa','1977','www.oracle.com'),
	('25796','Centrum Wiskunde & Informatica (CWI)','1214','Wilmington, Delaware, United States','1946','www.python.org'),
	('25897','Netscape 2','1215','Jerusalem, Israel','1995','www.javascripts.com'),
	
	('25898','Etherium Blockchain','1216','Bern, Switzerland ','2014','www.etherium.org');
	
	
	
	
	
	
	---------9.-------
	CREATE TABLE Employee(
    employee_id INT PRIMARY KEY,
	employee_name VARCHAR(100),
	age INT,
	designition VARCHAR(100),
	joining_date DATE,
	duty_hour VARCHAR(50),
	city VARCHAR(100),
	email VARCHAR(100)
	 );
	 
	INSERT INTO Employee(employee_id,employee_name,age,designition,joining_date,duty_hour,city,email)
	VALUES 
	('11','Rasel','24','computer architecture specialist','2020-01-01','8 hours','magura','rasel1122@gmail.com'),
	('22','Rakib','24','Backend Developer','2020-01-01','10 hours','barishal','ra4455@gmail.com'),
	('33','Akash','25','Data scientist','2020-02-01','10 hours','dhaka','Ar5566@gmail.com'),
	('44','Adnan','26','IT Specialist','2020-03-01','10 hours','rajshahi','Rq3243@gmail.com'),
	('55','nahid','26','DB Specialist','2021-01-01','8 hours','chittagong','nahid6556@gmail.com'),
	('66','Miraj','27','Network Analist','2020-04-02','10 hours','narayangonj','ms1221@gmail.com');
	
	
	
	
	---------10.-------
  CREATE TABLE Department(
    department_id INT PRIMARY KEY,
	department_name VARCHAR(100),
    employee_id INT ,
	employee_name VARCHAR(100),
	FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
	 );
	 
	INSERT INTO Department(department_id,department_name,employee_id,employee_name)
	VALUES 
	('2000','computer architecture','11','Rasel'),
	('2001','Development','22','Rakib'),
	('2002','Data communications','33','Akash'),
	('2003','IT','44','Adnan'),
	('2004','DB','55','nahid'),
	('2005','Network','66','Miraj');
	
	--------11.-------
   CREATE TABLE Manager(
    manager_id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id INT,
	manager_name VARCHAR(100),
	age INT,
	designition VARCHAR(100),
	joining_date DATE,
	duty_hour VARCHAR(50),
	city VARCHAR(100),
	email VARCHAR(100),
	FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
	 );
	 
	INSERT INTO Manager(manager_id,employee_id,manager_name,age,designition,joining_date,duty_hour,city,email)
	VALUES 
	('','11','Rasel','24','Manager','01/01/2020','8 hours','magura','rasel1122@gmail.com');

	
	-------12.--------
	CREATE TABLE salary(
    employee_id INT,
	employee_name VARCHAR(100),
	salary DECIMAL(6,2),
	FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
	 );
	 
	INSERT INTO salary(employee_id,employee_name,salary)
	VALUES 
	('11','Rasel','80000'),
	('22','Rakib','70000'),
	('33','Akash','60000'),
	('44','Adnan','60000'),
	('55','nahid','65000'),
	('66','Miraj','55000');
	
	
	-------13.--------////
	CREATE TABLE wallet(
    wallet_id INT PRIMARY KEY,
	wallet_name VARCHAR(100),
	customer_id INT,
	customer_nid INT,
	customer_name VARCHAR(100),
	password VARCHAR(50),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
	 );
	 
	INSERT INTO wallet(wallet_id,wallet_name,customer_id,customer_nid,customer_name,password)
	VALUES 
	('100001','Bkash','1','19631122','asad','25432'),
	('100002','Nagad','2','19631111','tanvir','20412'),
	('100003','Rocket','3','1963176','zakir','11465'),
	('100004','Upai','4','19631180','ashik','87402'),
	('100005','Dbbl','5','19631456','rabbi','56498');
	
	

