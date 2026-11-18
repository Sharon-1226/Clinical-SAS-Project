proc sort data=mylib.dm_vs;
    by Patient_ID;
run;

proc sort data=mylib.ae_summary;
    by Patient_ID;
run;

data mylib.final_clinical;
    merge mylib.dm_vs
          mylib.ae_summary;
    by Patient_ID;
run;

proc print data=mylib.final_clinical;
run;