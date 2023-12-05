use study_case_1;
select * from customer
where (year(CURDATE()) - year(date_of_birth)) between 18 and 50
and (address = 'Ha Noi' or address = 'Da Lat')