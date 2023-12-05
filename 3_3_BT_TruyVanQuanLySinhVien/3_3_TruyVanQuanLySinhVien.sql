use `2_3_quanlysinhvien`;

select *
from student
where StudentName like 'H%';

select *
from class
where month(startdate) = 12;

select *
from subject
where credit between 3 and 5;

set sql_safe_updates = 0;
update student
set classid = 2
where studentname = 'Hung';
set sql_safe_updates = 1;

select s.studentname, subname, mark
from mark m
join student s using (studentid)
join subject sub using (subid)
order by s.StudentName asc, mark desc;