use Sep19CHN

create schema MatchDay

create table MatchDay.Matches
(

m_Teams varchar(40),
)

insert into MatchDay.Matches values('Kolkata Knight Riders')
insert into MatchDay.Matches values('Delhi Daredevils')
insert into MatchDay.Matches values('Chennai Super Kings')
insert into MatchDay.Matches values('Kings XI Punjab')
insert into MatchDay.Matches values('Royal Challengers Bangalore')
insert into MatchDay.Matches values('Mumbai Indians')
insert into MatchDay.Matches values('Rajasthan Royals')
insert into MatchDay.Matches values('Sunrisers Hyderabad')
 
 select * from MatchDay.Matches

 create table MatchDay.Fixtures
 
 (

 --m_FixNo int ,
 m_FixDates datetime,
 m_Fixtures varchar(60),
 m_Stadiums Varchar(70),
 m_Location varchar(20),
 FixNo int identity(34,1),
FOREIGN KEY (FixNo) REFERENCES MatchDay.Results(FixNo)
 )



  insert into MatchDay.Fixtures values('1','09/19/2018','RCB vs SRH','M.Chinnaswamy Stadium','Bangalore');
  insert into MatchDay.Fixtures values('2','09/20/2018','MI vs CSK','Wankhede Stadium','Mumbai');
   insert into MatchDay.Fixtures values('3','09/21/2018','KKR Vs RR','Eden Gardens','Kolkata');
   insert into MatchDay.Fixtures values('4','09/22/2018','DD Vs KXIP','Feroz Shah Kotla Ground','Delhi');

    
   insert into MatchDay.Fixtures values('5','09/23/2018',' CSK Vs RCB ','M. A. Chidambaram Stadium','Chennai');
   insert into MatchDay.Fixtures values('6','09/24/2018','  SRH Vs MI','Rajiv Gandhi International Cricket Stadium','Hyderabad');
   insert into MatchDay.Fixtures values('7','09/25/2018','  KXIP Vs KKR','PCA Stadium','Mohali');
   insert into MatchDay.Fixtures values('8','09/26/2018',' RR Vs DD','Sawai Mansingh Stadium','Jaipur');
   
   
   insert into MatchDay.Fixtures values('9','09/27/2018','RCB Vs MI','M.Chinnaswamy Stadium','Bangalore');
   insert into MatchDay.Fixtures values('10','09/28/2018','SRH Vs CSK','Rajiv Gandhi International Cricket Stadium','Hyderabad');
   insert into MatchDay.Fixtures values('11','09/29/2018',' KXIP Vs RR ','PCA Stadium','Mohali');
   insert into MatchDay.Fixtures values('12','09/30/2018','KKR Vs DD','Eden Gardens','Kolkata');
   
   
   insert into MatchDay.Fixtures values('13','10/1/2018','RCB Vs KXIP','PCA Stadium','Mohali');
   insert into MatchDay.Fixtures values('14','10/2/2018','MI Vs KKR','Eden Gardens','Kolkata');
   insert into MatchDay.Fixtures values('15','10/3/2018','RR Vs SRH','Sawai Mansingh Stadium','Jaipur');
   insert into MatchDay.Fixtures values('16','10/4/2018','DD Vs CSK','Feroz Shah Kotla Ground','Delhi');


insert into MatchDay.Fixtures values('17','10/5/2018','RCB Vs KKR','M.Chinnaswamy Stadium','Bangalore');
insert into MatchDay.Fixtures values('18','10/6/2018','MI Vs DD','Wankhede Stadium','Mumbai');
insert into MatchDay.Fixtures values('19','10/7/2018','RR Vs CSK','M. A. Chidambaram Stadium','Chennai');
insert into MatchDay.Fixtures values('20','10/8/2018','SRH Vs KXIP','Rajiv Gandhi International Cricket Stadium','Hyderabad');


insert into MatchDay.Fixtures values('21','10/9/2018','RCB Vs DD','Feroz Shah Kotla Ground','Delhi');
insert into MatchDay.Fixtures values('22','10/10/2018','MI Vs RR','Sawai Mansingh Stadium','Jaipur');
insert into MatchDay.Fixtures values('23','10/11/2018','KKR Vs SRH','Eden Gardens','Kolkata');
insert into MatchDay.Fixtures values('24','10/12/2018','KXIP Vs CSK','PCA Stadium','Mohali');

insert into MatchDay.Fixtures values('25','10/13/2018','RCB Vs RR','M.Chinnaswamy Stadium','Bangalore');
insert into MatchDay.Fixtures values('26','10/14/2018','MI Vs KXIP','Wankhede Stadium','Mumbai');
insert into MatchDay.Fixtures values('27','10/15/2018','KKR Vs CSK','M. A. Chidambaram Stadium','Chennai');
insert into MatchDay.Fixtures values('28','10/16/2018','SRH Vs DD','Rajiv Gandhi International Cricket Stadium','Hyderabad');


insert into MatchDay.Fixtures values('29','10/19/2018','Qualifier 1 Vs Qualifier 2','Eden Gardens','Kolkata');
insert into MatchDay.Fixtures values('30','10/20/2018','Qualifier 3 Vs Qualifier 4','M.Chinnaswamy Stadium','Bangalore');
insert into MatchDay.Fixtures values('31','10/22/2018','Eliminator 1 Vs Qualifier(3,4)','M.Chinnaswamy Stadium','Bangalore');


insert into MatchDay.Fixtures values('32','10/25/2018','The Finals','Eden Gardens','Kolkata');

 select IDENT_CURRENT(MatchDay.Fixtures)+IDENT_INCR(MatchDay.Fixtures)


select * from MatchDay.Fixtures
 create table MatchDay.Results
 (
 FixNo int primary key,
 MatchResults varchar(30),
 )

 insert into MatchDay.Results values('RCB won');
 insert into MatchDay.Results values('CSK won');
 insert into MatchDay.Results values('KKR won');
 insert into MatchDay.Results values('KXIP won');

 insert into MatchDay.Results values('CSK won');
insert into MatchDay.Results values('SRH won');
insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('DD won');


insert into MatchDay.Results values('RCB won');
insert into MatchDay.Results values('CSK won');
insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('DD won');


insert into MatchDay.Results values('RCB won');
insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('SRH won');
insert into MatchDay.Results values('CSK won');

insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('DD won');
insert into MatchDay.Results values('CSK won');
insert into MatchDay.Results values('SRH won');


insert into MatchDay.Results values('RCB won');
insert into MatchDay.Results values('MI won');
insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('CSK won');

insert into MatchDay.Results values('RCB won');
insert into MatchDay.Results values('MI won');
insert into MatchDay.Results values('KKR won');
insert into MatchDay.Results values('SRH won');


---------------------------------qualifier matches-----------------
insert into MatchDay.Results values('KKR vs CSK----KKR won');
insert into MatchDay.Results values('RCB vs SRH----SRH won');
insert into MatchDay.Results values('SRH vs CSK----CSK won');
insert into MatchDay.Results values('KKR vs CSK----KKR won');


select *from MatchDay.Results
--------------------------- Qualifier Table -------------------------------------------
create table MatchDay.PointsTable
 (
 FixNo int primary key,
 MatchTeams varchar(30);
 MatchPoints int (4,1);
 )

  insert into MatchDay.PointsTable values('Kolkata knight Riders','14');
  insert into MatchDay.PointsTable values('Chennai Super Kings ','12');
  insert into MatchDay.PointsTable values('Royal Challengers Bangalore','10');
  insert into MatchDay.PointsTable values('Sunrisers Hyderabad','8');

  select *from MatchDay.PointsTable





 ------------------------------------------------


