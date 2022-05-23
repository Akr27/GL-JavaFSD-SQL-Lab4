#Question 6


select cat.CAT_ID, CAT_NAME, PRO_ID, min(MIN_PRICE) from category as cat
inner join
(
select prod.PRO_ID, PRO_NAME, CAT_ID, MIN_PRICE from product as d
inner join
(
select pro_id as PRO_ID, min(supp_price) as MIN_PRICE from supp_pricing
group by pro_id) as sp
on prod.pro_id = sp.pro_id)
as pro_sp
on cat.cat_id=pro_sp.CAT_ID
group by cat_id