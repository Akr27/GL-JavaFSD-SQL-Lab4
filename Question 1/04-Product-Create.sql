
create table if not exists `product`(
`PRO_ID` int not null primary key,
`PRO_NAME` varchar(20) not null default "Dummy Product",
`PRO_DESC` varchar(60),
`CAT_ID` int not null,
foreign key (`CAT_ID`) references category (`CAT_ID`)
);