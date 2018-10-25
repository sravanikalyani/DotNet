use Sep19CHN

create table Preetha.Team1
(
  Team_Id int identity(1,1) primary key,
  team_name varchar(20),
  home_ground varchar(30),
  team_owner varchar(30)
  --Logo_image image,
)

insert into Preetha.Team1 values('CSK','Chennai','INDIA_CEMENTS')

select * from  Preetha.Team1

create table Preetha.TeamPlayer
(
  Player_Id int identity(10,10) primary key,
  Team_Id int
  FOREIGN KEY (Team_Id) REFERENCES Preetha.Team(Team_Id),
  Player_name varchar(20),
  Age int,
  Speciality varchar(30)
)

insert into Preetha.TeamPlayer values('1','Dhoni','36','Wicket-Keeper Batsman')

select * from  Preetha.TeamPlayer


create table Preetha.PlayerPhoto
(
Player_photo_Id int identity(5,5) primary key,
Photo image,
)


--create table Preetha.Speciality
--(
--Speciality_Id int identity(5,5) primary key,
--Speciality_description varchar(50),
--)
--insert into Preetha.Speciality values ('

create table Preetha.Match
(
Match_Id int identity(101,1) primary key,
Team_one_Id int,
Team_two_Id int,
Venue_Id int,
Schedule_Id int,
Photogroup_Id int,
)
insert into Preetha.Match values ('111','222','000','1111','11111')
select * from Preetha.Match 

--create table Preetha.MatchPhoto
--(
--Match_photo_Id int identity(5,5) primary key,
--Match_Id int
--FOREIGN KEY (Match_Id) REFERENCES Preetha.Match(Match_Id),
--Photo image,
--)

create table Preetha.Venue
(
Venue_Id int identity(11,2)primary key,
Location varchar(30),
Description varchar(50),
)

insert into Preetha.Venue values ('Chennai','hitech city')
select * FROM  Preetha.Venue

create table Preetha.Schedule
(
--Scehdule_id int,
Match_Id int
FOREIGN KEY (Match_Id) REFERENCES Preetha.Match(Match_Id),
Venue_Id int
FOREIGN KEY (Venue_Id) REFERENCES Preetha.Venue(Venue_Id),
)

insert into Preetha.Schedule values ('12','34')
select * FROM  Preetha.Schedule

create table Preetha.Ticket
(
Ticket_Id int identity(10,10) primary key,
Match_Id int
FOREIGN KEY (Match_Id) REFERENCES Preetha.Match(Match_Id),
Category_Id int,
Price int
)
insert into Preetha.Ticket values ('1','01','22','8888')
select * FROM  Preetha.Ticket

create table Preetha.TicketCategory
(
TicketCategory_Id int primary key,
Category_Name varchar(30),
Category_Description varchar(40),
)