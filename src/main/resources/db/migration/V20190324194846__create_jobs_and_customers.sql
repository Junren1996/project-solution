create table STAGE
(
    ID SERIAL NOT NULL primary key,
    NAME varchar(24) not null check (NAME <> ''),
    ORDINAL int not null
);

create table CUSTOMER
(
    ID SERIAL NOT NULL primary key,
    NAME varchar(24) not null check (NAME <> ''),
    ADDRESS varchar(24) not null check (ADDRESS <> ''),
    PHONE varchar(24) not null check (PHONE <> '')
);

create table JOB
(
    ID SERIAL NOT NULL
        primary key,
    NAME VARCHAR(24) not null check (NAME <> ''),
    DESCRIPTION VARCHAR(255) not null check ( DESCRIPTION <> '' ),
    STAGE_ID INT,
    CUSTOMER_ID INT,
    foreign key (CUSTOMER_ID) references customer(ID),
    foreign key (STAGE_ID) references stage(ID)

);







