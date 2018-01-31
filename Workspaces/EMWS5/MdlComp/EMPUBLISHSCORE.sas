drop _temp_;
if (P_TargetBuy1 ge 0.78741496598639) then do;
b_TargetBuy = 1;
end;
else
if (P_TargetBuy1 ge 0.57768924302788) then do;
b_TargetBuy = 2;
end;
else
if (P_TargetBuy1 ge 0.54160583941605) then do;
b_TargetBuy = 3;
end;
else
if (P_TargetBuy1 ge 0.3584229390681) then do;
b_TargetBuy = 4;
end;
else
if (P_TargetBuy1 ge 0.26310483870967) then do;
_temp_ = dmran(1234);
b_TargetBuy = floor(5 + 3*_temp_);
end;
else
if (P_TargetBuy1 ge 0.23047763457164) then do;
b_TargetBuy = 8;
end;
else
if (P_TargetBuy1 ge 0.19841269841269) then do;
b_TargetBuy = 9;
end;
else
do;
_temp_ = dmran(1234);
b_TargetBuy = floor(10 + 11*_temp_);
end;
