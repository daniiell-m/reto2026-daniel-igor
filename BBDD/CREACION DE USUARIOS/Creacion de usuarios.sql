CREATE USER igor WITH PASSWORD="";

CREATE USER daniel FOR LOGIN daniel;

CREATE USER admin FOR LOGIN admin;

ALTER ROLE db_securityadmin ADD MEMBER igor;

ALTER ROLE db_ddladmin ADD MEMBER daniel;

ALTER ROLE db_owner ADD MEMBER admin;