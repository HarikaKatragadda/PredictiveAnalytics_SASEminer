drop _temp_;
if (P_RESPOND1 ge 0.13790035587188) then do;
b_RESPOND = 1;
end;
else
if (P_RESPOND1 ge 0.09039548022598) then do;
b_RESPOND = 2;
end;
else
if (P_RESPOND1 ge 0.08362919132149) then do;
_temp_ = dmran(1234);
b_RESPOND = floor(3 + 2*_temp_);
end;
else
if (P_RESPOND1 ge 0.08140262993112) then do;
b_RESPOND = 5;
end;
else
if (P_RESPOND1 ge 0.05296145408962) then do;
_temp_ = dmran(1234);
b_RESPOND = floor(6 + 2*_temp_);
end;
else
if (P_RESPOND1 ge 0.03650231544538) then do;
_temp_ = dmran(1234);
b_RESPOND = floor(8 + 2*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_RESPOND = floor(10 + 11*_temp_);
end;
