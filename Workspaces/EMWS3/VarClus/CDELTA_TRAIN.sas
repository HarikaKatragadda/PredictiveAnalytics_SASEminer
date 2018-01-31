if upcase(strip(ROLE)) ='INPUT' and upcase(strip(LEVEL)) ^='INTERVAL' then ROLE ='REJECTED' ;
if upcase(strip(ROLE))='INPUT' and upcase(strip(LEVEL))='INTERVAL' then do;
if upcase(strip(NAME)) in (
"UNITSIDD"
"PCPAYM0"
"DEPT2622"
"TOTORDQ0823"
"DAYLAST"
) then ROLE="INPUT";
else ROLE="REJECTED";
end;
if upcase(strip(ROLE)) = "REJECTED" then delete ;
