/* Check DM dataset */

data mylib.dm_missing;
    set mylib.dm_raw;

    if cmiss(of Patient_ID Treatment Sex) > 0
       or nmiss(of Age Height_cm Weight_kg) > 0;
run;


/* Check VS dataset */

data mylib.vs_missing;
    set mylib.vs_raw;

    if cmiss(of Patient_ID Visit) > 0
       or nmiss(of SBP DBP Heart_Rate Temperature) > 0;
run;


/* Check AE dataset */

data mylib.ae_missing;
    set mylib.ae_raw;

    if cmiss(of Patient_ID AE_Term Severity Relationship Outcome) > 0;
run;


/* Display missing records */

proc print data=mylib.dm_missing;
run;

proc print data=mylib.vs_missing;
run;

proc print data=mylib.ae_missing;
run;