
proc sql;
    create table mylib.ae_summary as
    select Patient_ID,
           count(*) as AE_Count,
           sum(Severity = "Severe") as Severe_AE,
           sum(Outcome = "Ongoing") as Ongoing_AE
    from mylib.ae_clean
    group by Patient_ID;
quit;

proc print data=mylib.ae_summary;
run;
