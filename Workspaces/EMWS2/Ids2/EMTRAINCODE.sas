*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS2 "\\filer.uncc.edu\home\hkatrag1\Project_lab\Predictive Analytics\Workspaces\EMWS2";
*------------------------------------------------------------*;
* Ids2: Creating DATA data;
*------------------------------------------------------------*;
data EMWS2.Ids2_DATA (label="")
/ view=EMWS2.Ids2_DATA
;
set BIA.PVA97NK;
run;
