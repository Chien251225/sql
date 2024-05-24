
UNION ALL
select * from publisher;
--1. In ra thong tin ten sach, gia mua, gia ban, ten nha xuat ban, ten the loai cua tung cuon sach
select b.book_id, b.name, b.price, p.name as publisherName, c.name as categoryName from book as b
INNER JOIN publisher as p ON b.publisher_id= p.publisher_id
INNER JOIN category as C ON b.category_id= c.category_id;
--2. In ra thong tin cuon sach co gia ban lon nhat , nho nhat
with tmp (price) as (select max(price) from book UNION select min(price) from book)
select * from book where price IN ( select price from tmp);
--3.In ra thong tin ten the loai va so dau sach cua the loai do
--select c.name, count(c.name) from category c
--inner join book b ON c.category_id =b.category_id group by c.name
select c.name, count(c.name) from category c
inner join book b ON c.category_id = b.category_id group by c.name
--4 In ra cac cuon sach chua ban duoc
select b.*from order_detail od right join book b ON od.book_id=b.book_id where od.book_id is null;
select * from order_detail;
--5. In ra cac cuon sach da ban duoc
--6. Tim hoa don mua it nhat 2 loai sach khac nhau
select order_id from order_detail group by order_id having count(distinct book_id)>=2;
--7. Tim hoa don co mua tat ca cac loai sach cua nha xuat ban Hong Duc
--8. tim sach co gia khoang tu 200000-500000
SELECT * FROM book WHERE price BETWEEN 200000 AND 500000;
--9. SELECT p.publisher_id, p.name, COUNT(b.book_id) AS book_count
 select* FROM publisher p
JOIN book b ON p.publisher_id = b.publisher_id
GROUP BY p.publisher_id, p.name
ORDER BY book_id DESC


SELECT SUM(amount) AS number
FROM order
WHERE  BETWEEN '2023-01-01' AND '2023-12-31';

select avg(order_total) from orders where year(order_date)

select p.publisher_id, p.name, max(b.price), min(b.price), avg(b.price) from publisher p join book b on p.publisher_id = b.publisher_id group by p.publisher_id, p.name;
