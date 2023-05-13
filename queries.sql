insert into city(name, population, latitude, longitude) values('City One', 500000, 46.3456, 10.12345);
insert into city(name, latitude, longitude, population) values('City Two', 34.1235, 12.1236, 1000000);
insert into city(population, name, longitude, latitude) values(50000, 'City Three', 100.1235, 12.167);
insert into city(population, name, longitude, latitude) values(50000, 'to_delete', 100.1235, 12.167);
insert into city(population, name, longitude, latitude) values(50, 'test', 10.1235, 123.167);

select name, population from city;
select name, population from city where population >= 1000000;
select name, population from city where population <= 1000000 or latitude > 20;
select name, population from city where longitude < 20 and latitude > 20;

delete from city where population <= 1000;
delete from city where name='to_delete';

update city set name='testing' where name='test';