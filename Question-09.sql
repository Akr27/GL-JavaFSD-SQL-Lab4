#Question 9


select report.supp_id, report.supp_name, report.average,
case
when report.average = 5 then 'Excellent Service'
when report.average > 4 then 'Good Service'
when report.average > 2 then 'Average Service'
else 'Poor Service'
end as Type_of_Service from
(select final.supp_id, supplier.supp_name, final.average from

(select test2.supp_id, sum(test2.rat_rastars)/count(test2.rat_ratstars) as average from
(select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing inner join
(select `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order` inner join rating on rating.`ord_id` = `order`.ord_id) as test
on test.pricing_id = supplier_pricing.pricing_id)
as test2 group by supplier_pricing.supp_id)
as final inner join supplier where final.supp_id = supplier.supp_id) as report;
