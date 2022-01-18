create Table users (
User_Id int primary key, 
User_Name varchar(50) Not NUll
);

Insert into users ( User_Id, User_Name) Values('1','Modesto');
Insert into users ( User_Id,User_Name) Values('2','Avine');
Insert into users (User_Id,User_Name) Values('3','Christopher');
Insert into users (User_Id,User_Name) Values('4','Cheong Woo');
Insert into users (User_Id,User_Name) Values('5','Saulat');
Insert into users (User_Id,User_Name) Values('6','Heidy');

select * from users;

create Table group_s (
GroupId int Primary key,
Groupname varchar(50) Not Null
);
insert into group_s(GroupId,Groupname) values ('11','I.T');
insert into group_s(GroupId,Groupname) values ('12','Sales');
insert into group_s(GroupId,Groupname) values ('13','Administration');
insert into group_s(GroupId,Groupname) values ('14','Operations');

select * from group_s;

create table Rooms (
RoomId int Primary key,
RoomName varchar(50) not null);
insert into Rooms(RoomId,RoomName) values('101','Room 101');
insert into Rooms(RoomId,RoomName) values('102','Room 102');
insert into Rooms(RoomId,RoomName) values('103','Auditorium A');
insert into Rooms(RoomId,RoomName) values('104','Auditorium B');

select * from Rooms;

create table user_group (
user_groupId int primary key,
User_Id int not null,
GroupId int not null ); 
insert into user_group(user_groupId,User_Id,GroupId) values('21','1','11');
insert into user_group(user_groupId,User_Id,GroupId) values('22','2','11');
insert into user_group(user_groupId,User_Id,GroupId) values('23','3','12');
insert into user_group(user_groupId,User_Id,GroupId) values('24','4','12');
insert into user_group(user_groupId,User_Id,GroupId) values('25','5','13');

select * from user_group;

create table Grouproom(
grouproomId int primary key,
GroupId int not null,
RoomId int not null);
insert into Grouproom(grouproomId,GroupId,RoomId) values('31','11','101');
insert into Grouproom(grouproomId,GroupId,RoomId) values('32','11','102');
insert into Grouproom(grouproomId,GroupId,RoomId) values('33','12','102');
insert into Grouproom(grouproomId,GroupId,RoomId) values('34','12','103');

select * from Grouproom;

select u.User_Name,g.Groupname from users u inner join user_group ug 
on u.User_Id =ug.User_Id right join group_s g
on ug.GroupId= g.GroupId;

select r.Roomname,g.GroupId from group_s g inner join Grouproom gr
on g.GroupId = gr.GroupId right join Rooms r
on gr.RoomId=r.RoomId
;

