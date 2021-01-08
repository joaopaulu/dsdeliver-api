create table tb_order (id  bigserial not null, address varchar(255), latitude float8, longitude float8, moment timestamp, status int4, primary key (id));
create table tb_order_product (order_id int8 not null, product_id int8 not null, primary key (order_id, product_id));
create table tb_product (id  bigserial not null, description varchar(255), image_uri varchar(255), name varchar(255), price float8, primary key (id));
alter table tb_order_product add constraint FKsu03ywlcvyqg5y78qey2q25lc foreign key (product_id) references tb_product;
alter table tb_order_product add constraint FK40anaevs16kmc2tbh7wc511fq foreign key (order_id) references tb_order;