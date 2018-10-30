SELECT gf.orderid, gf.giftid, gf.customerid
FROM giftorder gf
WHERE gf.customerid =
(SELECT c1.customerid FROM customer1 c1 WHERE location = 'Delhi' AND c1.customerid =gf.customerid )
AND gf.giftid=
(SELECT g1.giftid FROM gift g1 WHERE category != 'Showpiece' AND g1.giftid = gf.giftid)
AND gf.orderid = 
(SELECT gf1.orderid FROM giftorder gf1 WHERE shippingcity = 'Chennai' AND gf1.orderid = gf.orderid)
