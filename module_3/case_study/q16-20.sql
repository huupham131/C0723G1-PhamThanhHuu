use case_study;
-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
create view w_staff_contract as
select st.*
from staff st
join contract ct on ct.id_staff = st.id
where year(start_date) between 2019 and 2021
group by st.id;
select * from w_staff_contract;
set sql_safe_updates = 0;
delete from staff
where staff.id not in (select id from w_staff_contract);
set sql_safe_updates = 1;
-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
create view w_customer as
select c.id, c.name_customer, tc.name,ifnull(sum(ifnull(s.price,0) + ifnull(cd.quantity,0) * ifnull(acs.price,0)),0)as total
from customer c
join type_customer tc on c.id_type_customer = tc.id
join contract ct on ct.id_customer = c.id
join service s on s.id = ct.id_service
left join contract_detail cd on ct.id = cd.id_contract
left join accompanied_service acs on cd.id_accompanied_service = acs.id
where year(start_date) = 2021 and tc.name = "Platinium"
group by c.id;
update customer
set id_type_customer = 1
where id in (
select id from w_customer
where total >= 1000000);
drop view if exists w_customer;
-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
alter table customer
add column is_delete boolean default 0;
with temp as(
select c.id 
from customer c
join contract ct on ct.id_customer = c.id
where year(start_date) < 2021)

update customer
set is_delete = 1
where id in ( select * from temp);

select * from customer
where is_delete = 0;
-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
create view w_accompanied_service as
select acs.id
from accompanied_service acs
join contract_detail cd on cd.id_accompanied_service = acs.id
join contract ct on ct.id = cd.id_contract
where year(start_date) = 2020
group by acs.id
having sum(quantity) > 10;
set sql_safe_updates = 0;
update accompanied_service
set price = price * 2
where id in (select * from w_accompanied_service);
set sql_safe_updates = 1;
drop view if exists w_accompanied_service;
-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id
--  (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select id , name_staff, email, phone_number, birthday, address
from staff
union all
select id , name_customer, email, phone_number, birthday, address
from customer