
--Sắp xếp giảm dần tổng số bàn thắng của mỗi quốc gia sau tất cả các vòng
create view kq as select maqg1, substring_index(ketqua,'-',1) as doi1, maqg2,substring_index(ketqua,'-',-1) as doi2 from trandau; create view kq1 as select  maqg1, sum(doi1) as ts1 from kq group by maqg1;create view kq2 as select maqg2,sum(doi2) as ts2 from kq group by maqg2;select maqg1,ts1+ts2 from kq1 full join kq2 on maqg1=kq2.maqg2 order by ts1+ts2 desc;

--Tổng số bàn thắng ghi được của  đội uruguay
select (select sum(substring_index(ketqua,'-',1))from quocgia q join trandau t on q.maqg=t.maqg1 where q.tenqg = 'uruguay')+(select sum(substring_index(ketqua,'-',-1))from quocgia q join trandau t on q.maqg = t.maqg2 where q.tenqg = 'uruguay')as 'so ban thang'; 

--Đưa ra tên 3 quốc gia vô địch, á quân, hạng 3 của giải đấu
select tenqg as 'vo dich, a quan, hang 3'  
from quocgia q inner join bangxh b on q.maqg=b.maqg  
where hang =1 and vong='chung ket'  
union 
select tenqg as 'vo dich, a quan, hang 3'  
from quocgia q inner join bangxh b on q.maqg=b.maqg  
where hang = 2 and vong = 'chung ket'  
union       
select tenqg as 'vo dich, a quan, hang 3'  
from quocgia q inner join bangxh b on q.maqg=b.maqg  
where hang = 1 and vong ='tranh hang 3';

-- Đưa ra mức độ chênh lệch tỉ số giữa các trận đấu
select matran, concat(maqg1,'-',maqg2) as 'tran dau',ketqua, 
case       
when abs(substring_index(ketqua,'-',1)-substring_index(ketqua,'-',-1)) >= 5
then 'rat nhieu'       
when abs(substring_index(ketqua,'-',1)-substring_index(ketqua,'-',-1)) between 3 and 4
then 'nhieu'       
when abs(substring_index(ketqua,'-',1)-substring_index(ketqua,'-',-1)) = 2       
then 'binh thuong'      
when abs(substring_index(ketqua,'-',1)-substring_index(ketqua,'-',-1)) = 1
then 'it'       
else 'khong chenh lech'  
end as 'muc do chenh lech'  
from trandau;

--Đưa ra tên, tuổi của các cầu thủ của quốc gia á quân, sắp xếp giảm dần theo tuổi

select hoten,year(curdate())-year(ngaysinh) as tuoi
from cauthu as a,quocgia as b,bangxh as c
where a.maqg = b.maqg and b.maqg = c.maqg and vong = 'chung ket' and hang = 2
order by (year(curdate()) - year(ngaysinh)) desc;

--Đưa ra trận đấu có nhiều bàn thắng được ghi nhiều nhất
select vong, concat(maqg1,'-',maqg2) as 'tran dau', ketqua 
from trandau 
where (substring_index(ketqua,'-',1)+substring_index(ketqua,'-',-1))= (select max((substring_index(ketqua,'-',1)+substring_index(ketqua,'-',-1)))
from trandau);

--Đưa ra hành trình (danh sách các trận đấu) của đội vô địch
select vong, concat(maqg1,'-',maqg2) as 'tran dau', ketqua 
from trandau 
where maqg1 in (select maqg from bangxh where vong = 'chung ket' and hang = 1) or maqg2 in (select maqg from bangxh where vong = 'chung ket' and hang = 1);

--Đưa ra tên sân, địa chỉ sân mà từ đầu tiên của tên sân trùng với từ đầu tiên của địa chỉ sân
select tensan, diachi 
from svd 
where substring_index(tensan,' ',1) like substring_index(diachi,'  ',1);

--Đưa ra danh sách cầu thủ sinh vào năm nhuận của đội hạng 3
select hoten,ngaysinh  
from (bangxh b inner join quocgia q on b.maqg=q.maqg) 
inner join cauthu c on q.maqg=c.maqg  
where b.hang=1 and b.vong='tranh hang 3' and mod(year(ngaysinh),4)=0;

--Lấy ngẫu nhiên 1 cầu thủ của đội vô địch để kiểm tra doping
select hoten, tenqg 
from(cauthu c inner join quocgia q on c.maqg=q.maqg)
Inner join bangxh b on q.maqg=b.maqg
where vong='chung ket'and hang=1
order by rand() limit 1;
 
--Mã hóa điểm ở vòng loại của những quốc gia bị loại sau vòng loại sang dạng nhị phân 4 bit
select tenqg, vong, lpad(conv(diem,10,2),4,0) as diem 
from bangxh natural join quocgia 
where vong = 'loai' and maqg not in (select maqg from bangxh where vong = '1-8');

--Đưa ra mahlv, tên hlv bắt đầu bằng chữ ‘J’ và có 3 từ
select mahlv, tenhlv 
from huanluyenvien 
where left(tenhlv,1) like 'J' and tenhlv like '% % %';

--Đưa ra 10 trận đấu bắt đầu từ bản ghi thứ 13

select * from trandau limit 10 offset 12;

--Liệt kê cặp đâu và sân diên ra vào từng ngày trong tháng 7
select group_concat(concat(maqg1,'-',maqg2),'') as 'cap dau', group_concat(masan,'')as san, ngaytd from trandau as a group by ngaytd having month(ngaytd)=7;

--Liệt kê các mã svd - nơi diễn ra trận đấu theo từng ngày, từ ngày 16-06-2018 đến 19-06-2018
select ngaytd, group_concat(masan,'') 
from trandau 
where ngaytd between '2018-06-16' and '2018-06-19' 
group by ngaytd;

-- Đưa ra hlv mà huấn luyện cho chính đất nước họ
select tenhlv, tenqg
from huanluyenvien a join quocgia b on a.maqg=b.maqg
where a.quoctich=b.tenqg;

--Đưa ra tên hlv huấn luyện cho quốc gia có tuổi trung bình nhỏ hơn tuổi trung bình của Iceland, sắp xếp tăng dần theo tuổi trung bình
select tenhlv, tenqg, round(avg(year(curdate())-year(ngaysinh)),2) as 'tuoitrungbinh'  from (huanluyenvien h inner join quocgia q on h.maqg=q.maqg) inner join cauthu c on q.maqg=c.maqg group by c.maqg  having round(avg(year(curdate())-year(ngaysinh)),2) < (select round(avg(year(curdate())-year(ngaysinh)),2)from cauthu c inner join quocgia q on c.maqg=q.maqg where tenqg = 'iceland' group by c.maqg) order by round(avg(year(curdate())-year(ngaysinh)),2)asc;


--Đưa ra cầu thủ chơi ở vị trí tiền đạo của quốc gia toàn thắng ở vòng loại
select hoten, vitri, tenqg 
from (cauthu c inner join quocgia q on c.maqg=q.maqg) 
inner join bangxh b on q.maqg=b.maqg 
where thang = 3 and vitri = 'tien dao';

--So sánh tuổi của Harry Kane với tuổi trung bình của đội tuyển England 
select 
case 
when (select year(curdate())-year(ngaysinh) from cauthu where hoten = 'Harry Kane')>(select avg(year(curdate())-year(ngaysinh)) from cauthu c inner join quocgia q on c.maqg=q.maqg where tenqg = 'england'group by c.maqg) 
then 'lon hon' 
when (select year(curdate())-year(ngaysinh) from cauthu where hoten = 'Harry Kane') < (select avg(year(curdate())-year(ngaysinh)) from cauthu c inner join quocgia q on c.maqg=q.maqg where tenqg = 'england'group by c.maqg) 
then 'nho hon' 
else 'bang' 
end as 'dap an';

--Đưa ra tên hlv, tuổi hlv có tuổi trẻ tuổi nhất và già nhất
(select tenhlv, tenqg, year(curdate())-year(ngaysinhhlv) as tuoi 
from huanluyenvien h inner join quocgia q on h.maqg=q.maqg 
order by year(curdate())-year(ngaysinhhlv) asc limit 1) 
union 
(select tenhlv, tenqg, year(curdate())-year(ngaysinhhlv) as tuoi 
from huanluyenvien h inner join quocgia q on h.maqg=q.maqg 
order by year(curdate())-year(ngaysinhhlv) desc limit 1);

--Đưa ra tên cầu thủ có họ tên bắt đầu bằng nguyên âm cũng kết thúc bằng nguyên âm, sắp xếp giảm dần theo độ dài tên
select upper(hoten) 
from cauthu 
where hoten regexp '^[aeiou]' and hoten regexp '[aeiou]$' 
order by length(hoten) 
desc;

--Đưa ra tên hlv có quốc tịch là những quốc gai không tham dự world cup 2018
select tenhlv, quoctich 
from huanluyenvien h inner join quocgia q on h.maqg=q.maqg 
where quoctich not in (select tenqg from quocgia);

--Đưa ra số trận đấu mỗi ngày
select ngaytd, count(matran) 
from trandau 
group by ngaytd;

--Tìm các cầu thủ cùng năm sinh với cầu thủ Daniel Arzani nhưng sinh trước ngày sinh của Daniel Arzani
select hoten, ngaysinh 
from cauthu 
where year(curdate())-year(ngaysinh) = (select year(curdate())-year(ngaysinh) from cauthu where hoten = 'Daniel Arzani') 
and ngaysinh < (select ngaysinh from cauthu where hoten = 'Daniel Arzani');

--Thêm cột giải thưởng vào bảng quốc gia, update giải thưởng vào cột đó
alter table quocgia add giaithuong varchar(30);
update quocgia 
set giaithuong = 
case 
when maqg = (select maqg from bangxh where vong ='chung ket' and hang=1) then 'vo dich' 
when maqg = (select maqg from bangxh where vong = 'chung ket' and hang =2) then 'a quan' 
when maqg = (select maqg from bangxh where vong = 'tranh hang 3' and hang =1) then 'hang 3' 
else '-' 
end;

--Đưa ra các quốc gia toàn thua sau 3 trận vòng loại
select tenqg 
from quocgia q inner join bangxh b on q.maqg=b.maqg 
where vong='loai'and thua=3;

-- Đưa ra các trận đấu hòa nhau
select concat(maqg1,'-',maqg2) as 'tran dau', ketqua 
from trandau 
where substring_index(ketqua,'-',1)=substring_index(ketqua,'-',-1);

--Liệt kê các hlv lần lượt huấn luyện cho các đội theo từng quốc tịch của hlv
select quoctich,group_concat(tenhlv, '')  'ten huan luyen vien' ,group_concat(tenqg, '') 'ten quoc gia' from huanluyenvien as a, quocgia as b where a.maqg = b.maqg group by quoctich;

--Đưa ra quốc gia có tuổi trung bình trẻ nhất và già nhất
(select tenqg, round(avg(year(curdate())-year(ngaysinh)),2) as 'tuoitrungbinh' from cauthu c join quocgia q on c.maqg=q.maqg group by c.maqg order by round(avg(year(curdate())-year(ngaysinh)),2) asc limit 1) union (select tenqg, round(avg(year(curdate())-year(ngaysinh)),2) as 'tuoitrungbinh' from cauthu c join quocgia q on c.maqg=q.maqg group by c.maqg order by round(avg(year(curdate())-year(ngaysinh)),2) desc limit 1);

-- Đưa ra số trận của đội chủ nhà đã thi đấu
select tenqg, sum(sotran) 'So tran'
from bangxh as a, quocgia as b
where a.maqg = b.maqg and tenqg = 'russia';


	   








