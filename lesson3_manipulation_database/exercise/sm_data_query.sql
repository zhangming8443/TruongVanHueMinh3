use sale_management;

insert into sale_management.customer (c_id, c_name, c_age) value
(1,	'Minh Quan'	, 10),
(2,	'Ngoc Oanh'	, 20),
(3,	'Hong Ha'	, 50);

insert into sale_management.`order` (o_id, c_id, o_date, o_total_price) value
(1,	 1, '2006-06-21', null),
(2,	 2, '2006-06-23', null),
(3,	 1, '2006-03-16', null);

insert into sale_management.product value 
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

insert into order_detail (o_id, p_id, o_quantity) value 
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select `order`.o_id, o_date, o_total_price
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.c_name, p.p_name 
from customer c
join `order` o on c.c_id = o.c_id
join order_detail od on o.o_id = od.o_id
join product p on od.p_id = p.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.c_name
from customer c
left join  `order` o on c.c_id = o.c_id
where o.o_id is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.o_id, o.o_date, sum(p.p_price * od.o_quantity) as total_price
from `order` o
join order_detail od on o.o_id = od.o_id
join product p on od.p_id = p.p_id
group by o.o_id;



