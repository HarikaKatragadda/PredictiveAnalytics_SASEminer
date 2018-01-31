*------------------------------------------------------------*;
* Formula Code;
*------------------------------------------------------------*;

if NAME="GiftTimeLast_REV" then do;
ROLE ="INPUT";
REPORT ="N";
LEVEL ="INTERVAL";
end;
if NAME="GiftTimeLast" then delete;
