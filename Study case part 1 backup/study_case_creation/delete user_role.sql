SELECT *
  FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
 WHERE TABLE_NAME = 'user_role'; 
 
 alter table user_role
 drop foreign key user_role_ibfk_1;

 alter table user_role
 drop foreign key user_role_ibfk_2;
 
 drop table user_role;