-- Creating dimension/lookup tables for enceladus work 

-- Creating event_types lookup table
drop table if exists event_types;
select distinct library_definition into event_types
from import.master_plan;

alter table event_types
add id serial primary key;

-- Creating targets lookup table
drop table if exists targets;
select distinct target into targets
from import.master_plan;

alter table targets
add id serial primary key;

-- Creating teams lookup table
drop table if exists teams;
select distinct team into teams
from import.master_plan;

alter table teams
add id serial primary key;

-- Creating requests lookup table
drop table if exists requests;
select distinct request_name into requests
from import.master_plan;

alter table requests
add id serial primary key;

-- Creating spass_types lookup table
drop table if exists spass_types;
select distinct spass_type into spass_types
from import.master_plan;

alter table spass_types
add id serial primary key;

