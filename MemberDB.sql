use test 

create table Technology(TechnologyID int not null primary key, TechnologyName varchar(100))
create table Member(MemberID int not null primary key,MemberName varchar(100),DateOfBirth DateTime,Qualification varchar(50),yearsofexperience int,
TechnologyID int FOREIGN KEY REFERENCES Technology(TechnologyID)) 


select M.MemberID,M.MemberName,T.TechnologyID,T.TechnologyName 
from Member M inner join Technology T on m.TechnologyID = t.TechnologyID where (dateDiff(day,m.DateOfBirth,GETDATE())/365.25)>25 and yearsofexperience >=3 and T.TechnologyID=1

Insert into Technology values (1,'.Net'),(2,'SQLserver'),(3,'.NET'),(4,'.Net'),(5,'SQLserver'),(6,'.NET'),(7,'SAP'),(8,'AWS'),(9,'ORCALE')
 
Insert into Member values (1,'Member1',14-07-1991,'B.Tech',3,1),(2,'Member2',14-07-1992,'B.Tech',3,1),(3,'Member3',14-07-1992,'B.Tech',3,1),
(4,'Member4',14-07-1993,'B.Tech',2,1)
,(5,'Member5',14-07-1991,'B.Tech',4,3)
,(6,'Member6',14-07-1994,'B.Tech',3,2)
,(7,'Member7',14-07-1994,'B.Tech',3,1)
,(8,'Member8',14-07-1995,'B.Tech',8,9)
,(9,'Member9',14-07-1995,'B.Tech',4,4)
,(10,'Member10',14-07-1996,'B.Tech',3,5)
,(11,'Member11',14-07-1996,'B.Tech',2,6)

select * from Member
select * from Technology

Here used the constriants like primary key
Normalization is a process retriving the data faster and also it will not allow duplicates and also null values
2nf normalization is used in this two tables are used with relation between both tables and also primary key and foreign key based on the technology table primary key is used as foreign key in member table.


