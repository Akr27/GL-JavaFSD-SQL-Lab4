#Question 5


select sup.supp_id, supp_name, supp_city, supp_phone
from supplier as sup
inner join
(
select * from supplier_pricing group by
SUPP_ID having count(supp_id)>1
) as sp
on sup.supp_id = sp.supp_id;
