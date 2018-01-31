if NAME = "DemAge" then delete;
else 
if NAME    = "IMP_DemAge"  then do;
   ROLE    = "INPUT" ;
   FAMILY  = "" ;
   REPORT  = "N" ;
   LEVEL   = "INTERVAL" ;
   ORDER   = "" ;
end;
if NAME = "GiftAvgCard36" then delete;
else 
if NAME    = "IMP_GiftAvgCard36"  then do;
   ROLE    = "INPUT" ;
   FAMILY  = "" ;
   REPORT  = "N" ;
   LEVEL   = "INTERVAL" ;
   ORDER   = "" ;
end;
