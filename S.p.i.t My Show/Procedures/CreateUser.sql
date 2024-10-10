Create or replace procedure CreateUser(email IN varchar(30),name IN varchar(30),location IN varchar(30),mobileno IN number)
IS
Begin
Insert into users values(users_uid.nextval,email,name,location,mobileno);
End CreateUser;
/