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
	point	number(30)	NULL,
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
	contents	varchar2(3000)	NULL,
	authors	varchar2(100)	NULL,
	translators	varchar2(100)	NULL,
	status	varchar2(100)	NULL,
	thumbnail	varchar2(300)	NULL,
	event_id	number(30)	NOT NULL
);

CREATE TABLE yomi_event (
	id	number(30)	NOT NULL,
	event_name	varchar2(100)	NOT NULL,
	event_start	date	NULL,
	event_end	date	NULL,
	discount	number	NULL
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
	order_id	number(30)	NOT NULL
);

CREATE TABLE yomi_orderdetail (
	amount	number(30)	NOT NULL,
	recipient_name	varchar2(100)	NOT NULL,
	recipient_postnumber	number(10)	NOT NULL,
	recipient_city	varchar2(100)	NOT NULL,
	recipient_street	varchar2(100)	NOT NULL,
	recipient_location	varchar2(200)	NULL,
	please	varchar2(300)	NULL,
	item_id	number(30)	NOT NULL,
	order_id	number(30)	NOT NULL
);

CREATE TABLE yomi_auth (
	id	number(30)	NOT NULL,
	authority	varchar2(100)	NULL,
	user_id	number(30)	NOT NULL
);

CREATE TABLE yomi_board (
	board_id	number(30)	NOT NULL,
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
	group	number(30)	NOT NULL,
	step	number(10)	NULL,
	indent	number(10)	NULL,
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

ALTER TABLE `yomi_user` ADD CONSTRAINT `PK_YOMI_USER` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_item` ADD CONSTRAINT `PK_YOMI_ITEM` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_event` ADD CONSTRAINT `PK_YOMI_EVENT` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_cart` ADD CONSTRAINT `PK_YOMI_CART` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_order` ADD CONSTRAINT `PK_YOMI_ORDER` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_pay` ADD CONSTRAINT `PK_YOMI_PAY` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_delivery` ADD CONSTRAINT `PK_YOMI_DELIVERY` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_auth` ADD CONSTRAINT `PK_YOMI_AUTH` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_board` ADD CONSTRAINT `PK_YOMI_BOARD` PRIMARY KEY (
	`board_id`
);

ALTER TABLE `yomi_boardcategory` ADD CONSTRAINT `PK_YOMI_BOARDCATEGORY` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_addfile` ADD CONSTRAINT `PK_YOMI_ADDFILE` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_reply` ADD CONSTRAINT `PK_YOMI_REPLY` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_image` ADD CONSTRAINT `PK_YOMI_IMAGE` PRIMARY KEY (
	`id`
);

ALTER TABLE `yomi_item` ADD CONSTRAINT `FK_yomi_event_TO_yomi_item_1` FOREIGN KEY (
	`event_id`
)
REFERENCES `yomi_event` (
	`id`
);

ALTER TABLE `yomi_cart` ADD CONSTRAINT `FK_yomi_item_TO_yomi_cart_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

ALTER TABLE `yomi_cart` ADD CONSTRAINT `FK_yomi_user_TO_yomi_cart_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `yomi_user` (
	`id`
);

ALTER TABLE `yomi_order` ADD CONSTRAINT `FK_yomi_user_TO_yomi_order_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `yomi_user` (
	`id`
);

ALTER TABLE `yomi_pay` ADD CONSTRAINT `FK_yomi_order_TO_yomi_pay_1` FOREIGN KEY (
	`order_id`
)
REFERENCES `yomi_order` (
	`id`
);

ALTER TABLE `yomi_delivery` ADD CONSTRAINT `FK_yomi_order_TO_yomi_delivery_1` FOREIGN KEY (
	`order_id`
)
REFERENCES `yomi_order` (
	`id`
);

ALTER TABLE `yomi_nonmember` ADD CONSTRAINT `FK_yomi_order_TO_yomi_nonmember_1` FOREIGN KEY (
	`order_id`
)
REFERENCES `yomi_order` (
	`id`
);

ALTER TABLE `yomi_orderdetail` ADD CONSTRAINT `FK_yomi_item_TO_yomi_orderdetail_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

ALTER TABLE `yomi_orderdetail` ADD CONSTRAINT `FK_yomi_order_TO_yomi_orderdetail_1` FOREIGN KEY (
	`order_id`
)
REFERENCES `yomi_order` (
	`id`
);

ALTER TABLE `yomi_auth` ADD CONSTRAINT `FK_yomi_user_TO_yomi_auth_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `yomi_user` (
	`id`
);

ALTER TABLE `yomi_board` ADD CONSTRAINT `FK_yomi_user_TO_yomi_board_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `yomi_user` (
	`id`
);

ALTER TABLE `yomi_board` ADD CONSTRAINT `FK_yomi_boardcategory_TO_yomi_board_1` FOREIGN KEY (
	`board_number`
)
REFERENCES `yomi_boardcategory` (
	`id`
);

ALTER TABLE `yomi_review` ADD CONSTRAINT `FK_yomi_board_TO_yomi_review_1` FOREIGN KEY (
	`board_id`
)
REFERENCES `yomi_board` (
	`board_id`
);

ALTER TABLE `yomi_review` ADD CONSTRAINT `FK_yomi_item_TO_yomi_review_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

ALTER TABLE `yomi_review` ADD CONSTRAINT `FK_yomi_order_TO_yomi_review_1` FOREIGN KEY (
	`order_id`
)
REFERENCES `yomi_order` (
	`id`
);

ALTER TABLE `yomi_addfile` ADD CONSTRAINT `FK_yomi_item_TO_yomi_addfile_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

ALTER TABLE `yomi_addfile` ADD CONSTRAINT `FK_yomi_board_TO_yomi_addfile_1` FOREIGN KEY (
	`board_id`
)
REFERENCES `yomi_board` (
	`board_id`
);

ALTER TABLE `yomi_reply` ADD CONSTRAINT `FK_yomi_board_TO_yomi_reply_1` FOREIGN KEY (
	`board_id`
)
REFERENCES `yomi_board` (
	`board_id`
);

ALTER TABLE `yomi_ebook` ADD CONSTRAINT `FK_yomi_item_TO_yomi_ebook_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

ALTER TABLE `yomi_ebook` ADD CONSTRAINT `FK_yomi_user_TO_yomi_ebook_1` FOREIGN KEY (
	`user_id`
)
REFERENCES `yomi_user` (
	`id`
);

ALTER TABLE `yomi_image` ADD CONSTRAINT `FK_yomi_item_TO_yomi_image_1` FOREIGN KEY (
	`item_id`
)
REFERENCES `yomi_item` (
	`id`
);

