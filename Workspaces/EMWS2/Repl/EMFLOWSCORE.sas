   
* ;
* Defining New Variables;
* ;
Length REP_DemGender $9;
Label REP_DemGender='Replacement: Gender';
REP_DemGender= DemGender;
   
* ;
* Replace Specific Class Levels ;
* ;
length _UFormat200 $200;
drop   _UFORMAT200;
_UFORMAT200 = " ";
* ;
* Variable: DemGender;
* ;
_UFORMAT200 = strip(DemGender);
if _UFORMAT200 =  "U" then
REP_DemGender="_UNKNOWN_";
