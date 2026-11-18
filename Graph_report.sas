proc sgplot data=mylib.ae_clean;

    vbar AE_Term;

    title "Adverse Event Frequency";

run;

proc sgplot data=mylib.ae_clean;

    vbar Severity;

    title "Adverse Event Severity";

run;

proc sgplot data=mylib.final_clinical;

    vbar Treatment / response=SBP stat=mean;

    title "Average Systolic Blood Pressure";

run;

ods pdf file="%sysfunc(pathname(sasuser))/clinical_report.pdf";

proc means data=mylib.dm_clean
    n mean std min max;
    class Treatment;
    var Age Weight_kg;
run;

proc freq data=mylib.ae_clean;
    tables AE_Term Severity Outcome;
run;

ods pdf close;
