proc means data=mylib.dm_clean
    n mean median std min max;
    
    var Age Height_cm Weight_kg;

run;

proc means data=mylib.final_clinical
    n mean std min max;

    class Treatment;

    var SBP DBP Heart_Rate Temperature;

run;

proc freq data=mylib.dm_clean;

    tables Sex Treatment;

run;

proc summary data=mylib.dm_clean;
    var Age Weight_kg;
    output out=mylib.patient_summary
        mean=;
run;

proc print data=mylib.patient_summary;
run;