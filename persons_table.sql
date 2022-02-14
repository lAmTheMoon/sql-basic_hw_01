-- Напишите скрипт создания таблицы со следующими параметрами:
-- Название таблицы - PERSONS
-- содержит в себе 5 столбцов - name, surname, age, phone_number, city_of_living
-- первичным ключом будет сочетание name, surname, age
-- Напишите скрипт, который будет искать в таблице PERSONS поля name и surname пользователей, которые проживают в MOSCOW.
-- Напишите скрипт, который будет искать в таблице PERSONS все поля, у которых поле age выше 27 лет.
-- Отсортируйет получаемые результаты по убыванию возраста.

create table PERSONS
(
    name           varchar(255) not null,
    surname        varchar(255) not null,
    age            int          not null,
    phone_number   integer      not null unique,
    city_of_living varchar(255) not null,
    primary key (name, surname, age)
);

insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Pups', 'Sweet', 15, 77777777, 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Lusy', 'Black', 10, 55555555, 'SPB');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Maks', 'Mad', 7, 88888888, 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Yan', 'Honey', 5, 33333333, 'MOSCOW');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Odin', 'Baby', 3, 11111111, 'SPB');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Vanya', 'Lala', 28, 19999357, 'SPB');

select name, surname
from PERSONS
where city_of_living = 'MOSCOW';

select *
from PERSONS
where age > 27;

select *
from PERSONS
order by age desc;