data mylib.dm_invalid;
    set mylib.dm_raw;

    if Age < 18 or Age > 100
       or Height_cm <= 0
       or Weight_kg <= 0
       or Treatment not in ("Drug","Placebo")
       or Sex not in ("Male","Female");
run;

proc print data=mylib.dm_invalid;
run;