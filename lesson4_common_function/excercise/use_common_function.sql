use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * 
FROM `subject` 
WHERE credit = (SELECT MAX(credit) FROM `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select *
from `subject` sub
join mark m on sub.sub_id = m.sub_id
where m.mark in (select max(mark) from mark);
 
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_name, m.mark /m.exam_times as diem_trung_binh
from student s 
join mark m on s.student_id = m.student_id
order by m.mark desc
