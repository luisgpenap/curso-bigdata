SELECT version();

CREATE DATABASE bigdata;

CREATE SCHEMA analytics;

CREATE TABLE bigdata.analytics.teacher (
    id          bigserial,
    first_name  varchar(25),
    last_name   varchar(50),
    school      varchar(50),
    hire_date     date,
    salary      numeric
);

INSERT INTO bigdata.analytics.teacher (first_name,last_name,school,hire_date,salary)
VALUES ('Janet','Smith','F.D. Roosevelt HS','2011-10-30',36200),
       ('Lee','Reynolds','F.D. Roosevelt HS','1993-05-22',65000),
       ('Samuel','Cole','Myers Middle School','2005-08-01',43500),
       ('Samantha','Bush','Myers Middle School','2011-10-30',36200),
       ('Betty','Diaz','Myers Middle School','2005-08-30',43500),
       ('Kathleen','Roush','F.D. Roosevelt HS','2010-10-22',38500)
;

SELECT *
FROM bigdata.analytics.teacher
limit 10

--COPY table_name
--FROM '/tmp/.../your_file.csv'
--WITH (FORMAT CSV, HEADER);

CREATE TABLE us_counties_pop_est_2019(
    state_fips text,
    county_fips text,
    region smallint,
    state_name text,
    county_name text,
    area_land bigint,
    area_water bigint,
    internal_point_lat numeric(10,7),
    internal_point_lon numeric(10,7),
    pop_est_2018 integer,
    pop_est_2019 integer,
    births_2019 integer,
    deaths_2019 integer,
    international_migr_2019 integer,
    domestic_migr_2019 integer,
    residual_2019 integer,
    CONSTRAINT counties_2019_key PRIMARY KEY (state_fips,county_fips)
);

CREATE TABLE supervisor_salaries(
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    town text,
    county text,
    supervisor text,
    start_date timestamp,
    salary numeric(10,2),
    benefits numeric(10,2)
);

COPY supervisor_salaries(town,supervisor,salary)
FROM 'C:\Users\Public\supervisor_salaries.csv' --Los archivos se alojaron en la carpeta "public" de Users para ser importados
WITH (FORMAT CSV, HEADER);

select * from supervisor_salaries