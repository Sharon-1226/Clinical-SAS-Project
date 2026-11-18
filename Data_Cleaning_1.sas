/* Check duplicate patients in DM */

proc sort data=mylib.dm_raw
    out=mylib.dm_clean
    dupout=mylib.dm_duplicates
    nodupkey;

    by Patient_ID;
run;

/* Display duplicates */

proc print data=mylib.dm_duplicates;
run;
