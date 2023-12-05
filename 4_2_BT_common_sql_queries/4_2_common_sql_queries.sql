USE `2_3_quanlysinhvien`;

select *
from subject
where credit = (
	select max(credit)
    from subject);
    
select *
from subject 
join mark m using (subid)
where mark = (
	select max(mark)
    from mark m2
    where m.subid = m2.subid
    );
    
select s.studentid, s.studentname, avg(m.mark) as average_mark
from student s
join mark m using (studentid)
group by s.studentid
order by average_mark desc
