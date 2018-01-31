   
* ;
* Defining: REP_DemGender;
* ;
Length REP_DemGender$9;
Label REP_DemGender='Replacement: Gender';
REP_DemGender=DemGender;
* ;
* Variable: DemGender;
* ;
_UFORMAT200 = strip(DemGender);
if _UFORMAT200 =  "U" then
REP_DemGender="_UNKNOWN_";
