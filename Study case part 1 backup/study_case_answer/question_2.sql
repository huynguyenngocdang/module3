use study_case_1;
select * from employee
where 
`name` like 'H%' or 
`name` like 'T%' or
`name` like 'K%' 
and CHAR_LENGTH(`name`) <= 15;
