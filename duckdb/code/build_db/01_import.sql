attach 'data/databases/enceladus.db';
use enceladus;

create schema if not exists import;

show all tables;

create table import.master_plan as
    select * from read_csv('data/import/cassini/master_plan.csv');
