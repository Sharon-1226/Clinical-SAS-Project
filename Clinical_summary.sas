proc means data=mylib.dm_clean
    n mean std min max;

    class Treatment;

    var Age Weight_kg;

run;

proc freq data=mylib.dm_clean;

    tables Treatment*Sex;

run;

proc freq data=mylib.ae_clean;

    tables AE_Term;
    tables Severity;
    tables Relationship;
    tables Outcome;

run;

proc sql;

    create table mylib.ae_treatment_summary as

    select d.Treatment,
           a.AE_Term,
           count(*) as AE_Count

    from mylib.ae_clean as a

    inner join mylib.dm_clean as d
    on a.Patient_ID = d.Patient_ID

    group by d.Treatment, a.AE_Term;

quit;

proc print data=mylib.ae_treatment_summary;
run;

proc report data=mylib.dm_clean nowd;

    columns Treatment Age Weight_kg;

    define Treatment / group;
    define Age / analysis mean;
    define Weight_kg / analysis mean;

run;
