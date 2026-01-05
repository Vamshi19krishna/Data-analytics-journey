 **Creting a table**
 **integer is used for numbers**
 **char is used if we know the character size**
 **varchar is used if character size in not known and to minimise/reduce memory** 
 
 
 create TABLE Student(
  rollno integer,
  firstname varchar(100),
  email varchar(100),
  age integer
  );
  
 ** '*' selects all the columns from the table , '*' represents the COLUMN**
 
  SELECT * from Student
  
  SELECT firstname,age from Student
  
  **where clause represents the row names and values**Student
  
  select firstname from Student where rollno=3
  
  **INSERT and values function is used to insert data in tables**Student
  
  insert INTO Student(rollno,firstname,email,age)
  VALUES(1,'vamshi','vamshi@email.com',20),
  (2,'krishna','krishna@email.com',21),
  (3,'kitkat','kitkat@email.com',22),
  (1,'parnika','parnika@gmail.com',23)
  
  **adding primary key**
  **primary key allows/check the colunm not null and makes it unique**
  **making rollno as primary key**
  
  **drop function is used to delete or drop the table**
  
  drop TABLE Student
  
  create TABLE Student(
  rollno integer primary key,
  firstname varchar(100),
  email varchar(100),
  age integer
  );
  
  insert INTO Student(rollno,firstname,email,age)
  VALUES(1,'vamshi','vamshi@email.com',20),
  (2,'krishna','krishna@email.com',21),
  (3,'kitkat','kitkat@email.com',22),
  (4,'vamshi','vamshi19@gmail.com',23)
  
  **adding AUTOINCREMENT/identity(1,1) to rollno colunm in the TABLE**
  ** no need to add rollno every time so we have added AUTOINCREMENT**
  **rollno as primary key and AUTOINCREMENT**
  
  drop TABLE Student
  
  create TABLE Student(
  rollno integer primary key AUTOINCREMENT,
  firstname varchar(100),
  email varchar(100),
  age integer
  );
  
  insert INTO Student(firstname,email,age)
  VALUES('vamshi','vamshi@email.com',20),
  ('krishna','krishna@email.com',21),
  ('kitkat','kitkat@email.com',22),
  ('vamshi','vamshi19@gmail.com',23)
  
 SELECT * from Student

  