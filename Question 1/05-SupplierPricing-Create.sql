
create table if not exists `supplier_pricing` (
`PRICING_ID` int not null primary key,
`PRO_ID` int not null,
`SUPP_ID` int not null,
`SUPP_PRICE` int default 0,
foreign key (`PRO_ID`) references product (`PRO_ID`),
foreign key (`SUPP_ID`) references supplier (`SUPP_ID`)
);
