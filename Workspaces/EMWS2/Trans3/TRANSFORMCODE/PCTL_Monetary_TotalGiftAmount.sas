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
