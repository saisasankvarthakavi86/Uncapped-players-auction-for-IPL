create Database NCA;
use NCA;
create table Region(
Jerseyno int primary key,
Player varchar(50),Region varchar(50));
create table Credibility(
MOMS int,MOS int,Jerseyno int references Region(Jerseyno));
create table Fitness(
Fitness varchar(50),Age int, previous_injuries varchar(50),Jerseyno int references Region(Jerseyno));
create table Finance(
Salary int,Investment int,Jerseyno int references Region(Jerseyno));
insert into Region values (13,"Sarath","Maharashtra"),(14,"Venkatesh","Maharashtra"),(15,"Madan","Maharashtra"),(16,"Mohan","Maharashtra"),(17,"Vijay","Maharashtra"),(18,"Virat","Delhi"),(19,"Vikas","Delhi"),(20,"Prajwal","Delhi"),(21,"Prakash","Delhi"),(22,"Ajay","Delhi"),(23,"Abhay","Delhi"),(24,"Bharat","Delhi"),(25,"VijayPrakash","Andhra Pradesh"),(45,"Rohit Sarma","Andhra Pradesh"),(78,"Haardik","Andhra Pradesh"),(99,"Krunal","Andhra Pradesh"),(101,"Kailash","Andhra Pradesh"),(73,"Surya","Telangana"),(4,"Tilak","Telangana"),(8,"Sasank","Telangana"),(9,"Pranav","Telangana");
insert into region values (91,"Shreyas","Maharashtra");
insert into credibility values (12,12,12),(13,13,13),(0,0,14),(1,1,15),(2,2,16),(3,3,17),(25,18,18),(26,7,19),(4,4,20),(5,5,21),(6,6,22),(7,7,23),(8,8,24),(9,9,25),(18,17,45),(10,10,78),(13,14,99),(5,5,101),(7,3,73),(4,4,4),(8,8,8),(9,9,9);
insert into finance values(50000,100000,12),(100000,50000,13),(100000,50000,14),(100000,50000,15),(100000,50000,16),(100000,50000,17),(100000,50000,18),(100000,50000,19),(100000,50000,21),(100000,50000,22),(100000,50000,45),(100000,50000,99),(100000,50000,101),(100000,50000,91);
insert into fitness values("Excellent",21,"no",91),("Excellent",18,"no",99),("Excellent",20,"no",18),("Excellent",22,"no",45),("ok",15,"yes",13),("ok",15,"yes",14),("nok",15,"yes",15),("nok",15,"yes",16),("ok",15,"yes",17),("ok",19,"yes",21),("ok",19,"yes",22),("ok",19,"yes",23),("ok",19,"yes",24),("ok",19,"yes",25),("ok",19,"yes",78),("ok",19,"yes",99),("ok",19,"yes",101),("ok",19,"yes",73),("ok",19,"no",4),("ok",19,"no",8),("ok",19,"no",9);
select * from finance;
select * from Credibility;
select * from fitness;
select * from Region;
select * from Region Right join Fitness on Region.Jerseyno=fitness.jerseyno order by Region.Jerseyno;


