
begin
    DBMS_OUTPUT.put_line('Evaluation among race');
end;
/
/*we get evaluation information among race*/
select race, avg(total_evaluate) as averge_score, stddev(total_evaluate) as std
from  evaluation join employee using (employee_id)
group by(race);

/
begin
    DBMS_OUTPUT.put_line('Evaluation among gender');
end;


/
/*we get evaluation information among gender*/
select gender, avg(total_evaluate) as averge_score, stddev(total_evaluate) as std
from  evaluation join employee using (employee_id)
group by(gender);
/
begin
    DBMS_OUTPUT.put_line('Evaluation among age');
end;
/






/*we get evaluation information among age*/
select age, avg(total_evaluate) as averge_score,stddev(total_evaluate) as std
from (select  (CASE WHEN age<40 THEN 'Young'
   WHEN age>=40 THEN 'Old'
   END) as age,total_evaluate
   from  evaluation join employee using (employee_id))
group by(age);
/
begin
    DBMS_OUTPUT.put_line('Overall Evaluation');
end;


/

/* we use age more than 40 as old and smaller than 40 as young*/
select race, age, gender, avg(total_evaluate) as averge_score
from (select  (CASE WHEN age<40 THEN 'Young'
   WHEN age>=40 THEN 'Old'
   END) as age,race, gender,total_evaluate
   from  evaluation join employee using (employee_id))
group by(race,age, gender)
order by averge_score desc;









Column race format a10;

