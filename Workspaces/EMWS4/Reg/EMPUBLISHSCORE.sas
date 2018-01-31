*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_RESPOND $ 12;
label I_RESPOND = 'Into: RESPOND' ;
*** Target Values;
array REGDRF [2] $12 _temporary_ ('1' '0' );
label U_RESPOND = 'Unnormalized Into: RESPOND' ;
format U_RESPOND BEST12.;
*** Unnormalized target values;
ARRAY REGDRU[2]  _TEMPORARY_ (1 0);

drop _DM_BAD;
_DM_BAD=0;

*** Check CCPAYM0 for missing values ;
if missing( CCPAYM0 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DEPT03 for missing values ;
if missing( DEPT03 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLINDET for missing values ;
if missing( DOLINDET ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLLARQ16 for missing values ;
if missing( DOLLARQ16 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLLARQ18 for missing values ;
if missing( DOLLARQ18 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DOLLARQ22 for missing values ;
if missing( DOLLARQ22 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check DTBUYLST for missing values ;
if missing( DTBUYLST ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TENURE for missing values ;
if missing( TENURE ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ12 for missing values ;
if missing( TOTORDQ12 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ19 for missing values ;
if missing( TOTORDQ19 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ20 for missing values ;
if missing( TOTORDQ20 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TOTORDQ21 for missing values ;
if missing( TOTORDQ21 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.0566154801;
   _P1 = 0.9433845199;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: CCPAYM0 ;
_TEMP = CCPAYM0 ;
_LP0 = _LP0 + (    0.17386622187313 * _TEMP);

***  Effect: DEPT03 ;
_TEMP = DEPT03 ;
_LP0 = _LP0 + (    0.02875412924912 * _TEMP);

***  Effect: DOLINDET ;
_TEMP = DOLINDET ;
_LP0 = _LP0 + (    0.00011158900515 * _TEMP);

***  Effect: DOLLARQ16 ;
_TEMP = DOLLARQ16 ;
_LP0 = _LP0 + (    0.00130411346068 * _TEMP);

***  Effect: DOLLARQ18 ;
_TEMP = DOLLARQ18 ;
_LP0 = _LP0 + (    0.00290326793786 * _TEMP);

***  Effect: DOLLARQ22 ;
_TEMP = DOLLARQ22 ;
_LP0 = _LP0 + (     0.0026218160544 * _TEMP);

***  Effect: DTBUYLST ;
_TEMP = DTBUYLST ;
_LP0 = _LP0 + (    0.00027777764126 * _TEMP);

***  Effect: TENURE ;
_TEMP = TENURE ;
_LP0 = _LP0 + (    0.00156169612796 * _TEMP);

***  Effect: TOTORDQ12 ;
_TEMP = TOTORDQ12 ;
_LP0 = _LP0 + (    0.17271035006114 * _TEMP);

***  Effect: TOTORDQ19 ;
_TEMP = TOTORDQ19 ;
_LP0 = _LP0 + (     0.2310856842267 * _TEMP);

***  Effect: TOTORDQ20 ;
_TEMP = TOTORDQ20 ;
_LP0 = _LP0 + (    0.38450514583074 * _TEMP);

***  Effect: TOTORDQ21 ;
_TEMP = TOTORDQ21 ;
_LP0 = _LP0 + (    0.22973093314276 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1;
_TEMP =     -8.0025008616364 + _LP0;
if (_TEMP < 0) then do;
   _TEMP = exp(_TEMP);
   _P0 = _TEMP / (1 + _TEMP);
end;
else _P0 = 1 / (1 + exp(-_TEMP));
_P1 = 1.0 - _P0;

REGDR1:


*** Posterior Probabilities and Predicted Level;
label P_RESPOND1 = 'Predicted: RESPOND=1' ;
label P_RESPOND0 = 'Predicted: RESPOND=0' ;
P_RESPOND1 = _P0;
_MAXP = _P0;
_IY = 1;
P_RESPOND0 = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
I_RESPOND = REGDRF[_IY];
U_RESPOND = REGDRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
