data mylib.dm_raw;
input Patient_ID $ Treatment $ Sex $ Age Height_cm Weight_kg;
datalines;
P001 Drug Male 25 170 65
P002 Placebo Female 30 160 58
P003 Drug Female 45 155 62
P004 Placebo Male 35 175 78
P005 Drug Male 50 168 72
P006 Placebo Female 28 162 55
P007 Drug Female 40 158 60
P008 Placebo Male 55 172 80
P009 Drug Male 32 180 75
P010 Placebo Female 48 165 68
P011 Drug Female 36 157 59
P012 Placebo Male 42 178 82
P013 Drug Male 29 173 70
P014 Placebo Female 38 159 61
P015 Drug Female 52 163 66
P016 Placebo Male 31 176 74
P017 Drug Male 46 169 77
P018 Placebo Female 27 154 52
P019 Drug Female 34 161 57
P020 Placebo Male 49 181 85
;
run;

proc print data=mylib.dm_raw;
run;