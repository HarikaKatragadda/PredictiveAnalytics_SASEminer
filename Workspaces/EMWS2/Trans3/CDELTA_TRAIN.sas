*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;

if NAME="PCTL_GiftCntAll" then do;
   COMMENT = "Quantile(5) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="GiftCntAll" then delete;

if NAME="PCTL_GiftTimeLast_REV" then do;
   COMMENT = "Quantile(5) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="GiftTimeLast_REV" then delete;

if NAME="PCTL_Monetary_TotalGiftAmount" then do;
   COMMENT = "Quantile(5) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="NOMINAL";
end;
if NAME="Monetary_TotalGiftAmount" then delete;
