if upcase(strip(ROLE)) ='INPUT' and upcase(strip(LEVEL)) ^='INTERVAL' then ROLE ='REJECTED' ;
if upcase(strip(ROLE))='INPUT' and upcase(strip(LEVEL))='INTERVAL' then do;
if upcase(strip(NAME)) in (
"DOLINDET"
"TOTORDQ20"
"DOLLARQ03"
"DOLLARQ22"
"DOLLARQ06"
"TOTORDQ19"
"TOTORDQ11"
"DOLLARQ04"
"DOLLARQ05"
"DOLLARQ16"
"DOLLARQ18"
"DTBUYLST"
"TOTORDQ14"
"TOTORDQ21"
"DOLLARQ09"
"DOLLARQ02"
"DOLLARQ01"
"DOLLARQ07"
"TOTORDQ13"
"TENURE"
"DOLLARQ08"
"METHPAYMCK"
"CCPAYM0"
"DEPT03"
"DEPT12"
"DEPT24"
"DEPT18"
"BOTHPAYM0"
"DOLLARQ17"
"TOTORDQ12"
"TOTORDQ15"
"DOLINDEA"
"DOLLARQ10"
) then ROLE="INPUT";
else ROLE="REJECTED";
end;
if upcase(strip(ROLE)) = "REJECTED" then delete ;
