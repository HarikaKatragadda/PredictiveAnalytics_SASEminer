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
