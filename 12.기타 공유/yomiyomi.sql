CREATE TABLE yomi_user (
	id	number(30)	NOT NULL,
	password	varchar2(100)	NOT NULL,
	username	varchar2(100)	NOT NULL,
	name	varchar2(100)	NOT NULL,
	tel	varchar2(20)	NULL,
	postnumber	varchar2(10)	NULL,
	city	varchar2(100)	NULL,
	street	varchar2(100)	NULL,
	location	varchar2(200)	NULL,
	point_id	number(30)	NULL,
	logintime	date	NULL,
	enabled	number(1)	NULL,
	account	varchar2(100)	NULL,
	bank	varchar2(100)	NULL
);

CREATE TABLE yomi_item (
	id	number(30)	NOT NULL,
	title	varchar2(100)	NOT NULL,
	price	number(30)	NOT NULL,
	publisher	varchar2(100)	NULL,
	datetime	date	NULL,
	star	number	NULL,
	stock	number(30)	NULL,
	contents	clob	NULL,
	authors	varchar2(100)	NULL,
	translators	varchar2(100)	NULL,
	status	varchar2(100)	NULL,
	thumbnail	varchar2(300)	NULL,
	event_id	number(30)	NULL
);

CREATE TABLE yomi_event (
	id	number(30)	NOT NULL,
	event_name	varchar2(100)	NOT NULL,
	event_start	date	NULL,
	event_end	date	NULL,
	discount	number	NULL,
	board_id	number(30)	NOT NULL
);

CREATE TABLE yomi_cart (
	id	number(30)	NOT NULL,
	amount	number(30)	NOT NULL,
	item_id	number(30)	NOT NULL,
	user_id	number(30)	NOT NULL
);

CREATE TABLE yomi_order (
	id	number(30)	NOT NULL,
	order_date	date	NULL,
	user_id	number(30)	NULL
);

CREATE TABLE yomi_pay (
	id	number(30)	NOT NULL,
	pay_date	date	NULL,
	pay_result	varchar2(100)	NULL,
	order_id	number(30)	NOT NULL
);

CREATE TABLE yomi_delivery (
	id	number(30)	NOT NULL,
	delivery_name	varchar2(100)	NULL,
	delivery_date date	NULL,
	delivery_number	varchar2(100)	NULL,
	delivery_state	varchar2(100)	NULL,
	order_id	number(30)	NOT NULL
);

CREATE TABLE yomi_nonmember (
	name	varchar2(100)	NOT NULL,
	tel	varchar2(20)	NOT NULL,
	account	varchar2(100)	NULL,
	bank	varchar2(100)	NULL,
	order_id	number(30)	NOT NULL,
	email	varchar2(100)	NOT NULL,
	password	varchar2(100)	NOT NULL
);

CREATE TABLE yomi_orderdetail (
	amount	number(30)	NOT NULL,
	recipient_name	varchar2(100)	NOT NULL,
	recipient_postnumber	varchar2(20)	NOT NULL,
	recipient_city	varchar2(100)	NOT NULL,
	recipient_street	varchar2(100)	NOT NULL,
	recipient_location	varchar2(200)	NULL,
	please	varchar2(300)	NULL,
	item_id	number(30)	NOT NULL,
	order_id	number(30)	NOT NULL,
	total_price	number(30) NULL,
	orderlist	varchar(300) NULL
);

CREATE TABLE yomi_auth (
	id	number(30)	NOT NULL,
	authority	varchar2(100)	NULL,
	user_id	number(30)	NOT NULL
);

CREATE TABLE yomi_board (
	id	number(30)	NOT NULL,
	title	varchar2(100)	NOT NULL,
	content	varchar2(3000)	NOT NULL,
	written_date	date	NOT NULL,
	hit	number(30)	NULL,
	user_id	number(30)	NOT NULL,
	board_number	number(30)	NOT NULL
);

CREATE TABLE yomi_boardcategory (
	id	number(30)	NOT NULL,
	board_name	varchar2(100)	NOT NULL
);

CREATE TABLE yomi_review (
	board_id	number(30)	NOT NULL,
	item_id	number(30)	NOT NULL,
	order_id	number(30)	NOT NULL
);

CREATE TABLE yomi_addfile (
	id	number(30)	NOT NULL,
	file_name	varchar2(100)	NOT NULL,
	file_path	varchar2(200)	NOT NULL,
	file_extension	varchar2(100)	NOT NULL,
	file_order	number(10)	NULL,
	item_id	number(30)	NOT NULL,
	board_id	number(30)	NOT NULL
);

CREATE TABLE yomi_reply (
	id	number(30)	NOT NULL,
	reply_group	number(30)	NOT NULL,
	reply_step	number(10)	NULL,
	reply_indent	number(10)	NULL,
	board_id	number(30)	NOT NULL
);

CREATE TABLE yomi_ebook (
	bookmark	number(10)	NULL,
	item_id	number(30)	NOT NULL,
	user_id	number(30)	NOT NULL
);

CREATE TABLE yomi_image (
	id	number(30)	NOT NULL,
	image	varchar2(300)	NULL,
	image_order	number(10)	NULL,
	item_id	number(30)	NOT NULL
);

CREATE TABLE yomi_point (
	id	number(30)	NOT NULL,
	point	number(30)	NULL,
	point_date	date	NULL,
	user_id	number(30)	NOT NULL,
	total_point number(30) NULL,
	point_state varchar2(20) NULL,
	item_id number(30) NULL
);

CREATE SEQUENCE yomi_user_seq;

CREATE SEQUENCE yomi_item_seq;

CREATE SEQUENCE yomi_event_seq;

CREATE SEQUENCE yomi_cart_seq;

CREATE SEQUENCE yomi_order_seq;

CREATE SEQUENCE yomi_pay_seq;

CREATE SEQUENCE yomi_delivery_seq;

CREATE SEQUENCE yomi_auth_seq;

CREATE SEQUENCE yomi_boardcategory_seq;

CREATE SEQUENCE yomi_addfile_seq;

CREATE SEQUENCE yomi_reply_seq;

CREATE SEQUENCE yomi_image_seq;

CREATE SEQUENCE yomi_point_seq;

