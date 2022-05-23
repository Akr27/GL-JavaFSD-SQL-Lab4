
create table if not exists `order` (
`ORD_ID` int not null primary key,
`ORD_AMOUNT` int not null,
`ORD_DATE` date,
`CUS_ID` int not null,
`PRICING_ID` int not null,
foreign key (`CUS_ID`) references customer (`CUS_ID`),
foreign key (`PRICING_ID`) references supplier_pricing (`PRICING_ID`)
);