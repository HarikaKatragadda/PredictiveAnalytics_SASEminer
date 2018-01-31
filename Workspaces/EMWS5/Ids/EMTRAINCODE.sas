*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS5 "\\filer.uncc.edu\home\hkatrag1\Project_lab\Predictive Analytics\Workspaces\EMWS5";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS5.Ids_DATA (label="")
/ view=EMWS5.Ids_DATA
;
set BIA.ORGANICS;
run;
