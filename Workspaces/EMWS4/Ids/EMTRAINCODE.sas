*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS4 "\\filer.uncc.edu\home\hkatrag1\Predictive Analytics_modified\Workspaces\EMWS4";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS4.Ids_DATA (label="")
/ view=EMWS4.Ids_DATA
;
set BIA.CATALOG2010;
run;
