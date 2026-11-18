proc contents data=mylib.final_clinical;
run;

proc print data=mylib.final_clinical(obs=10);
run;

proc sql;
    select count(*) as Total_Records
    from mylib.final_clinical;

    select count(distinct Patient_ID) as Total_Patients
    from mylib.final_clinical;
quit;
