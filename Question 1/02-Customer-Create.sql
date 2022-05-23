
create table if not exists `customer` (
`CUS_ID` int not null primary key,
`CUS_NAME` varchar(20) not null,
`CUS_PHONE` varchar(10) not null,
`CUS_CITY` varchar(30) not null,
`CUS_GENDER` char);