*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS3 "\\filer.uncc.edu\home\hkatrag1\Project_lab\Predictive Analytics\Workspaces\EMWS3";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS3.Ids_DATA (label="")
/ view=EMWS3.Ids_DATA
;
set BIA.BANK;
run;
