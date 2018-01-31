if NAME="DemGender" then ROLE="REJECTED";
else
if NAME="REP_DemGender" then do;
ROLE="INPUT";
LEVEL="NOMINAL";
end;
