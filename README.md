# OOPS Project
A Spring boot application for Online Food Ordering.
## Features
- frontend made using HTML, CSS, JS
- User can register ,search products , order, add to cart ,view profile and check status of order
- Admin can add and delete users, view orders, add products, change delivery status and maintain stock
- Forgot password feature was also implemented
- Connected with a MySQL Database
- Passwords were encrypted using Bcrypt (working to implement using JWT tokens)
## To Run Locally

1. clone the repo
2. install ```java``` and ```mysql``` database into your system
3. use ```MySQL Workbench``` gui for database and run ```general_stores.sql``` as query
4. go to resources
5. find ```application.properties``` file in this dir
6. now fill in the following lines
   
- server configuration
  ```bash
  server.PORT=
  ```
  set the ```port``` to any port number which is currently not being used by any other application.

- mysql configuration

  ```bash
  spring.jpa.hibernate.ddl-auto=
  spring.datasource.url=
  spring.datasource.username=
  spring.datasource.password=
  spring.datasource.driver-class-name=
  ```
  set ```spring.jpa.hibernate.ddl-auto=update``` to update the jpa repo <br/>
  
  put database connection string in ```spring.datasource.url``` which will be of the format ```jdbc:mysql://${DB_HOST}:${DB_PORT}/${DB_NAME}``` <br/>
  
  set ```username``` and ```password``` for your database connection, which can be set while establishing the connection from mysql workbench <br/>
  
  set spring.datasource.driver-class-name=```com.mysql.jdbc.Driver``` <br/>

- email configuration

  ```bash
  spring.mail.host=
  spring.mail.port=
  spring.mail.username=
  spring.mail.password=
  spring.mail.properties.mail.smtp.auth=
  spring.mail.properties.mail.smtp.starttls.enable=
  ```
  
  set host=```smtp.gmail.com``` for setting gmail.com as default service
  
  set ```port=587```
  
  put ```username``` and ```password``` for the email account you want to use as admin account for this app, all emails will be sent from this email id
  
  configure these lines
  ```
  spring.mail.properties.mail.smtp.auth=true
  spring.mail.properties.mail.smtp.starttls.enable=true
  ```
7. Run ```GeneralStoresApplication.java``` file to start the ```JVM```

## Tech Stack

- Spring Boot
- MySQL
- JSP
