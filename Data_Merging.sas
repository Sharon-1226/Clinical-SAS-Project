/* Sort DM dataset */

proc sort data=mylib.dm_clean;
    by Patient_ID;
run;

/* Sort VS dataset */

proc sort data=mylib.vs_clean;
    by Patient_ID;
run;

/* Merge DM and VS */

data mylib.dm_vs;
    merge mylib.dm_clean
          mylib.vs_clean;
    by Patient_ID;
run;

/* Display output */

proc print data=mylib.dm_vs;
run;