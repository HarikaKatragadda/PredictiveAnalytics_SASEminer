if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'ACTBUY'
'BOTHPAYM'
'BUYPROP'
'CATALOGCNT'
'CCPAYM'
'COUNTY'
'DAYLAST'
'DEPT01'
'DEPT02'
'DEPT03'
'DEPT04'
'DEPT05'
'DEPT06'
'DEPT07'
'DEPT08'
'DEPT09'
'DEPT10'
'DEPT11'
'DEPT12'
'DEPT13'
'DEPT14'
'DEPT15'
'DEPT16'
'DEPT17'
'DEPT18'
'DEPT19'
'DEPT20'
'DEPT21'
'DEPT22'
'DEPT23'
'DEPT24'
'DEPT25'
'DEPT26'
'DEPT27'
'DOLINDEA'
'DOLINDET'
'DOLL24'
'DOLLARQ01'
'DOLLARQ02'
'DOLLARQ03'
'DOLLARQ04'
'DOLLARQ05'
'DOLLARQ06'
'DOLLARQ07'
'DOLLARQ08'
'DOLLARQ09'
'DOLLARQ10'
'DOLLARQ11'
'DOLLARQ12'
'DOLLARQ13'
'DOLLARQ14'
'DOLLARQ15'
'DOLLARQ16'
'DOLLARQ17'
'DOLLARQ18'
'DOLLARQ19'
'DOLLARQ20'
'DOLLARQ21'
'DOLLARQ22'
'DOLNETDA'
'DOLNETDT'
'DTBUYLST'
'DTBUYORG'
'FREQPRCH'
'METHPAYM'
'MONLAST'
'PCPAYM'
'TENURE'
'TOTORDQ01'
'TOTORDQ02'
'TOTORDQ03'
'TOTORDQ04'
'TOTORDQ05'
'TOTORDQ06'
'TOTORDQ07'
'TOTORDQ08'
'TOTORDQ09'
'TOTORDQ10'
'TOTORDQ11'
'TOTORDQ12'
'TOTORDQ13'
'TOTORDQ14'
'TOTORDQ15'
'TOTORDQ16'
'TOTORDQ17'
'TOTORDQ18'
'TOTORDQ19'
'TOTORDQ20'
'TOTORDQ21'
'TOTORDQ22'
'UNITSIDD'
'UNITSLAP'
'UNTLANPO'
) then ROLE='INPUT';
else delete;
end;
