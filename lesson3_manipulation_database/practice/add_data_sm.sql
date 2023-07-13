use quan_ly_sinh_vien;

insert into class(class_id, class_name, start_date, `status`) value
(1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'B3', current_date, 0);

INSERT INTO Student (student_name, address, phone, `status`, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (student_name, address, `status`, class_id)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (student_name, address, Phone, `status`, class_id)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO `subject`
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO Mark (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
