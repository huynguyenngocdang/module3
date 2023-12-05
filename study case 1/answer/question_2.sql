select * from employee
where
(name like 'H%' or
name like 'T%' or
name like 'K%' ) and
length(name) <= 15