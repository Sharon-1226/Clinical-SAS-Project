data mylib.ae_raw;
length Relationship $10;

input Patient_ID $ AE_Term $ Severity $ Relationship $ Outcome $9.;
datalines;
P001 Headache Mild Related Recovered
P002 Nausea Moderate Related Recovered
P003 Fever Mild NotRelated Recovered
P004 Dizziness Moderate Related Ongoing
P005 Headache Mild Related Recovered
P006 Vomiting Severe Related Recovered
P007 Nausea Mild NotRelated Recovered
P008 Fever Moderate Related Ongoing
P009 Headache Moderate Related Recovered
P010 Dizziness Mild NotRelated Recovered
P011 Nausea Moderate Related Recovered
P012 Vomiting Mild Related Recovered
P013 Fever Mild NotRelated Recovered
P014 Headache Severe Related Recovered
P015 Dizziness Moderate Related Ongoing
P016 Nausea Mild Related Recovered
P017 Vomiting Moderate NotRelated Recovered
P018 Headache Mild Related Recovered
P019 Fever Moderate Related Recovered
P020 Nausea Severe Related Ongoing
;
run;

proc print data=mylib.ae_raw;
run;
