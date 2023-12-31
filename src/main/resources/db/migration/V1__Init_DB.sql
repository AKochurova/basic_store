create sequence hibernate_sequence start 1 increment 1;

create table ordered_item (
    id int8 not null,
    type varchar(2048) not null,
    user_id int8,
    price int8,
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

create table sell_product (
    id int8 not null,
    filename varchar(255),
    type varchar(2048) not null,
    price int8,
    seller_id int8,
    primary key (id)
);

alter table if exists ordered_item
    add constraint ordered_item_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;