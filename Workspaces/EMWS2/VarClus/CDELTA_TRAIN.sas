if upcase(strip(ROLE)) ='INPUT' and upcase(strip(LEVEL)) ^='INTERVAL' then ROLE ='REJECTED' ;
if upcase(strip(ROLE))='INPUT' and upcase(strip(LEVEL))='INTERVAL' then do;
if upcase(strip(NAME)) in (
"DOLINDET"
"TOTORDQ101"
"TOTORDQ191"
"TOTORDQ071"
"TOTORDQ171"
"TOTORDQ091"
"TOTORDQ021"
"TOTORDQ131"
"TOTORDQ061"
"TOTORDQ141"
"TOTORDQ051"
"BOTHPAYM1"
"TOTORDQ081"
"TOTORDQ104"
"CATALOGCNT"
"DEPT1213"
"DEPT079"
"DEPT08"
"DEPT15"
"ACTBUY5"
"TOTORDQ122"
"TOTORDQ172"
"TOTORDQ151"
"TOTORDQ132"
"TOTORDQ152"
"TOTORDQ182"
"TOTORDQ012"
"TOTORDQ112"
"TOTORDQ072"
"TOTORDQ102"
"TOTORDQ022"
"DEPT1129"
"TOTORDQ111"
"TOTORDQ121"
"TOTORDQ031"
"TOTORDQ181"
"TOTORDQ041"
"TOTORDQ011"
"CCPAYM0"
"TOTORDQ201"
"DEPT198"
"TOTORDQ075"
"DEPT1713"
"DEPT1912"
"ACTBUY10"
"TOTORDQ126"
"TOTORDQ167"
"DEPT1116"
"DEPT1212"
"DEPT1918"
"TOTORDQ064"
"DEPT2625"
"TOTORDQ086"
"TOTORDQ213"
"DEPT206"
"TOTORDQ195"
"TOTORDQ158"
"DEPT1920"
"TOTORDQ161"
"TOTORDQ211"
"DEPT1113"
"DEPT118"
"DEPT1210"
"DOLLARQ22"
"PCPAYM0"
"TOTORDQ044"
"TOTORDQ015"
"DEPT178"
"DEPT1734"
"TOTORDQ155"
"TOTORDQ034"
"DEPT2615"
"TOTORDQ166"
"DEPT1723"
"TOTORDQ046"
"ACTBUY6"
"DEPT2611"
"TOTORDQ135"
"TOTORDQ117"
"TOTORDQ073"
"DEPT188"
"DEPT179"
"DEPT266"
"DEPT1211"
"DEPT1813"
"DOLINDEA"
"TOTORDQ083"
"TOTORDQ023"
"DEPT1715"
"TOTORDQ052"
"DEPT269"
"DEPT115"
"DEPT175"
"TOTORDQ144"
"TOTORDQ184"
"ACTBUY9"
"TOTORDQ146"
"DEPT207"
"DEPT2614"
"DEPT204"
"DEPT205"
"DEPT185"
"TOTORDQ074"
"TOTORDQ024"
"DEPT216"
"DEPT078"
"ACTBUY4"
"DEPT1216"
"DEPT263"
"TOTORDQ162"
"DEPT1811"
"DEPT129"
"DEPT1712"
"TOTORDQ154"
"DEPT127"
"DEPT264"
"TOTORDQ203"
"DEPT114"
"DEPT2655"
"DEPT1215"
"TOTORDQ215"
"TOTORDQ214"
"DEPT076"
"TOTORDQ226"
"TOTORDQ222"
"TOTORDQ212"
"DEPT203"
"DEPT184"
"DEPT2610"
"TOTORDQ175"
"DEPT1118"
"DEPT215"
"DEPT1914"
"DEPT1710"
"DEPT113"
"DEPT183"
"DEPT195"
"DEPT208"
"DEPT119"
"DEPT214"
"DEPT219"
"DEPT197"
"DEPT1910"
"TOTORDQ2010"
"DEPT186"
"DEPT1717"
"DEPT126"
"DEPT128"
"TOTORDQ094"
"TOTORDQ127"
"TOTORDQ013"
"DEPT2622"
"TOTORDQ0823"
"MONLAST"
"BOTHPAYM0"
"ACTBUY0"
"TOTORDQ180"
"TOTORDQ110"
"DEPT180"
"DEPT210"
) then ROLE="INPUT";
else ROLE="REJECTED";
end;
if upcase(strip(ROLE)) = "REJECTED" then delete ;
