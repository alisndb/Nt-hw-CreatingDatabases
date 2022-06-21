

CREATE TABLE if not exists Genre (
    id serial primary key,
    name varchar(20) not null unique
);

CREATE TABLE if not exists Author (
    id serial primary key,
    genre_id integer references Genre(id),
    name varchar(40) not null
);

CREATE TABLE if not exists Album (
    id serial primary key,
    author_id integer references Author(id),
    name varchar(40) not null,
    year timestamp not null
);

CREATE TABLE if not exists Track (
    id serial primary key,
    album_id integer references Album(id),
    name varchar(40) not null,
    length integer not null
);
