select gfo.giftid, 
NVL(to_char(gfo1.orderid), 'NA') AS orders
from gift gfo LEFT join giftorder gfo1
on gfo.giftid = gfo1.giftid  AND gfo1.shippingcity = 'Mysore'
