data EMWS4.MdlComp_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "Tree1" TARGETLABEL "response target";
set EMWS4.Tree2_EMRANK;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "Tree1" TARGETLABEL "response target";
set EMWS4.Tree2_EMSCOREDIST;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "Tree1" TARGETLABEL "response target";
set WORK.Tree2_OUTFIT;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "Tree1" TARGETLABEL "response target";
set EMWS4.Tree2_EMCLASSIFICATION;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree2" MODEL "Tree2" MODELDESCRIPTION "Tree1" TARGETLABEL "response target";
set EMWS4.Tree2_EMEVENTREPORT;
where upcase(TARGET) = upcase("RESPOND");
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "Tree2" TARGETLABEL "response target";
set EMWS4.Tree3_EMRANK;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMRANK;
set EMWS4.MdlComp_EMRANK work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "Tree2" TARGETLABEL "response target";
set EMWS4.Tree3_EMSCOREDIST;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMSCOREDIST;
set EMWS4.MdlComp_EMSCOREDIST work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "Tree2" TARGETLABEL "response target";
set WORK.Tree3_OUTFIT;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMOUTFIT;
set EMWS4.MdlComp_EMOUTFIT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "Tree2" TARGETLABEL "response target";
set EMWS4.Tree3_EMCLASSIFICATION;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMCLASSIFICATION;
set EMWS4.MdlComp_EMCLASSIFICATION work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Tree3" MODEL "Tree3" MODELDESCRIPTION "Tree2" TARGETLABEL "response target";
set EMWS4.Tree3_EMEVENTREPORT;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMEVENTREPORT;
set EMWS4.MdlComp_EMEVENTREPORT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Regression" TARGETLABEL "response target";
set EMWS4.Reg_EMRANK;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMRANK;
set EMWS4.MdlComp_EMRANK work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Regression" TARGETLABEL "response target";
set EMWS4.Reg_EMSCOREDIST;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMSCOREDIST;
set EMWS4.MdlComp_EMSCOREDIST work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Regression" TARGETLABEL "response target";
set WORK.Reg_OUTFIT;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMOUTFIT;
set EMWS4.MdlComp_EMOUTFIT work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Regression" TARGETLABEL "response target";
set EMWS4.Reg_EMCLASSIFICATION;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMCLASSIFICATION;
set EMWS4.MdlComp_EMCLASSIFICATION work.MdlComp_TEMP;
run;
data work.MdlComp_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Reg" MODEL "Reg" MODELDESCRIPTION "Regression" TARGETLABEL "response target";
set EMWS4.Reg_EMEVENTREPORT;
where upcase(TARGET) = upcase("RESPOND");
run;
data EMWS4.MdlComp_EMEVENTREPORT;
set EMWS4.MdlComp_EMEVENTREPORT work.MdlComp_TEMP;
run;
