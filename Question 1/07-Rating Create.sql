
create table if not exists `rating` (
`RAT_ID` int not null primary key,
`ORD_ID` int not null,
`RAT_RATSTARS` int not null,
foreign key (`ORD_ID`) references `order` (`ORD_ID`)
);
