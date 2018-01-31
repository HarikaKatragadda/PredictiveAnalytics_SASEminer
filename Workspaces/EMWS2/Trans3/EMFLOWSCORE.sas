*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* TRANSFORM: GiftCntAll , Quantile(5);
*------------------------------------------------------------*;
label PCTL_GiftCntAll = 'Transformed: Gift Count All Months';
length PCTL_GiftCntAll $36;
if (GiftCntAll eq .) then PCTL_GiftCntAll="";
else
if (GiftCntAll < 3) then
PCTL_GiftCntAll = "01:low-3";
else
if (GiftCntAll >= 3 and GiftCntAll < 6) then
PCTL_GiftCntAll = "02:3-6";
else
if (GiftCntAll >= 6 and GiftCntAll < 10) then
PCTL_GiftCntAll = "03:6-10";
else
if (GiftCntAll >= 10 and GiftCntAll < 16) then
PCTL_GiftCntAll = "04:10-16";
else
if (GiftCntAll >= 16) then
PCTL_GiftCntAll = "05:16-high";
*------------------------------------------------------------*;
* TRANSFORM: GiftTimeLast_REV , Quantile(5);
*------------------------------------------------------------*;
label PCTL_GiftTimeLast_REV = 'Transformed GiftTimeLast_REV';
length PCTL_GiftTimeLast_REV $36;
if (GiftTimeLast_REV eq .) then PCTL_GiftTimeLast_REV="";
else
if (GiftTimeLast_REV < -21) then
PCTL_GiftTimeLast_REV = "01:low--21";
else
if (GiftTimeLast_REV >= -21 and GiftTimeLast_REV < -18) then
PCTL_GiftTimeLast_REV = "02:-21--18";
else
if (GiftTimeLast_REV >= -18 and GiftTimeLast_REV < -17) then
PCTL_GiftTimeLast_REV = "03:-18--17";
else
if (GiftTimeLast_REV >= -17 and GiftTimeLast_REV < -16) then
PCTL_GiftTimeLast_REV = "04:-17--16";
else
if (GiftTimeLast_REV >= -16) then
PCTL_GiftTimeLast_REV = "05:-16-high";
*------------------------------------------------------------*;
* TRANSFORM: Monetary_TotalGiftAmount , Quantile(5);
*------------------------------------------------------------*;
label PCTL_Monetary_TotalGiftAmount = 'Transformed Monetary_TotalGiftAmount';
length PCTL_Monetary_TotalGiftAmount $36;
if (Monetary_TotalGiftAmount eq .) then PCTL_Monetary_TotalGiftAmount="";
else
if (Monetary_TotalGiftAmount < 36) then
PCTL_Monetary_TotalGiftAmount = "01:low-36";
else
if (Monetary_TotalGiftAmount >= 36 and Monetary_TotalGiftAmount < 65.01) then
PCTL_Monetary_TotalGiftAmount = "02:36-65.01";
else
if (Monetary_TotalGiftAmount >= 65.01 and Monetary_TotalGiftAmount < 99.96) then
PCTL_Monetary_TotalGiftAmount = "03:65.01-99.96";
else
if (Monetary_TotalGiftAmount >= 99.96 and Monetary_TotalGiftAmount < 150.96) then
PCTL_Monetary_TotalGiftAmount = "04:99.96-150.96";
else
if (Monetary_TotalGiftAmount >= 150.96) then
PCTL_Monetary_TotalGiftAmount = "05:150.96-high";
