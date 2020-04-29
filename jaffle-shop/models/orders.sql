select order_id, customer_id, amount
from {{ ref('stg_orders') }} left join
(select *, "orderID" order_id from raw.stripe.payment)
using(order_id)
