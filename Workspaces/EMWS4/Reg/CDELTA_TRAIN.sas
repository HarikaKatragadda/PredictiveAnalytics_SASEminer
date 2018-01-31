if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'CCPAYM0'
'DEPT03'
'DOLINDET'
'DOLLARQ16'
'DOLLARQ18'
'DOLLARQ22'
'DTBUYLST'
'TENURE'
'TOTORDQ12'
'TOTORDQ19'
'TOTORDQ20'
'TOTORDQ21'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg: Rejected using forward selection";
end;
end;
