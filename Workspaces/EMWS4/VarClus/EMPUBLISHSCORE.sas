*** Begin Class Look-up, Standardization, Replacement ;
 
*** Generate dummy variables for BOTHPAYM ;
label BOTHPAYM0 = 'BOTHPAYM=0' ;
label BOTHPAYM1 = 'BOTHPAYM=1' ;
if missing( BOTHPAYM ) then do;
   BOTHPAYM0 = .;
   BOTHPAYM1 = .;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( BOTHPAYM , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = '0'  then do;
      BOTHPAYM0 = 1;
      BOTHPAYM1 = 0;
   end;
   else if _dm4 = '1'  then do;
      BOTHPAYM0 = 0;
      BOTHPAYM1 = 1;
   end;
   else do;
      delete;
   end;
end;
 
*** Generate dummy variables for CCPAYM ;
label CCPAYM0 = 'CCPAYM=0' ;
label CCPAYM1 = 'CCPAYM=1' ;
if missing( CCPAYM ) then do;
   CCPAYM0 = .;
   CCPAYM1 = .;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( CCPAYM , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = '0'  then do;
      CCPAYM0 = 1;
      CCPAYM1 = 0;
   end;
   else if _dm4 = '1'  then do;
      CCPAYM0 = 0;
      CCPAYM1 = 1;
   end;
   else do;
      delete;
   end;
end;
 
*** Generate dummy variables for METHPAYM ;
label METHPAYMCC = 'METHPAYM=CC' ;
label METHPAYMCK = 'METHPAYM=CK' ;
label METHPAYMDK = 'METHPAYM=DK' ;
label METHPAYMXBOT = 'METHPAYM=XBOT' ;
*** encoding is sparse, initialize to zero;
METHPAYMCC = 0;
METHPAYMCK = 0;
METHPAYMDK = 0;
METHPAYMXBOT = 0;
if missing( METHPAYM ) then do;
   METHPAYMCC = .;
   METHPAYMCK = .;
   METHPAYMDK = .;
   METHPAYMXBOT = .;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( METHPAYM , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = 'CC'  then do;
      METHPAYMCC = 1;
   end;
   else if _dm4 = 'CK'  then do;
      METHPAYMCK = 1;
   end;
   else if _dm4 = 'XBOT'  then do;
      METHPAYMXBOT = 1;
   end;
   else if _dm4 = 'DK'  then do;
      METHPAYMDK = 1;
   end;
   else do;
      delete;
   end;
end;
 
*** Generate dummy variables for PCPAYM ;
label PCPAYM0 = 'PCPAYM=0' ;
label PCPAYM1 = 'PCPAYM=1' ;
if missing( PCPAYM ) then do;
   PCPAYM0 = .;
   PCPAYM1 = .;
end;
else do;
   length _dm4 $ 4; drop _dm4 ;
   _dm4 = put( PCPAYM , $4. );
   %DMNORMIP( _dm4 )
   if _dm4 = '0'  then do;
      PCPAYM0 = 1;
      PCPAYM1 = 0;
   end;
   else if _dm4 = '1'  then do;
      PCPAYM0 = 0;
      PCPAYM1 = 1;
   end;
   else do;
      delete;
   end;
end;
 
*** End Class Look-up, Standardization, Replacement ;
 
 
/*-------------------------------------------------*/
/* Varclus Score Code Begins*/
/*-------------------------------------------------*/
 
Clus1 = 0 ; /*---Cluster Component 1------ */
Clus2 = 0 ; /*---Cluster Component 2------ */
Clus3 = 0 ; /*---Cluster Component 3------ */
Clus4 = 0 ; /*---Cluster Component 4------ */
Clus5 = 0 ; /*---Cluster Component 5------ */
Clus6 = 0 ; /*---Cluster Component 6------ */
Clus7 = 0 ; /*---Cluster Component 7------ */
Clus8 = 0 ; /*---Cluster Component 8------ */
Clus9 = 0 ; /*---Cluster Component 9------ */
Clus10 = 0 ; /*---Cluster Component 10------ */
Clus11 = 0 ; /*---Cluster Component 11------ */
Clus12 = 0 ; /*---Cluster Component 12------ */
Clus13 = 0 ; /*---Cluster Component 13------ */
Clus14 = 0 ; /*---Cluster Component 14------ */
Clus15 = 0 ; /*---Cluster Component 15------ */
Clus16 = 0 ; /*---Cluster Component 16------ */
Clus17 = 0 ; /*---Cluster Component 17------ */
Clus18 = 0 ; /*---Cluster Component 18------ */
Clus19 = 0 ; /*---Cluster Component 19------ */
Clus20 = 0 ; /*---Cluster Component 20------ */
Clus21 = 0 ; /*---Cluster Component 21------ */
Clus22 = 0 ; /*---Cluster Component 22------ */
Clus23 = 0 ; /*---Cluster Component 23------ */
Clus24 = 0 ; /*---Cluster Component 24------ */
Clus25 = 0 ; /*---Cluster Component 25------ */
Clus26 = 0 ; /*---Cluster Component 26------ */
Clus27 = 0 ; /*---Cluster Component 27------ */
Clus28 = 0 ; /*---Cluster Component 28------ */
Clus29 = 0 ; /*---Cluster Component 29------ */
Clus30 = 0 ; /*---Cluster Component 30------ */
Clus31 = 0 ; /*---Cluster Component 31------ */
Clus32 = 0 ; /*---Cluster Component 32------ */
Clus33 = 0 ; /*---Cluster Component 33------ */
Clus6 = Clus6+0.31049469798101 * (ACTBUY - 0.99109663409337)/1.16003174926523;
Clus27 = Clus27+0.2102032557169 * (BUYPROP - 0.18928931964407)/0.25656954904129;
Clus1 = Clus1+0.13961478444576 * (CATALOGCNT - 3.77161470451372)/3.12899556544539;
Clus2 = Clus2+0.26053380861573 * (DAYLAST - 1182.17608189855)/1226.0780195912;
Clus30 = Clus30+0.32606352949113 * (DEPT01 - 0.50547541492166)/1.82274128473225;
Clus30 = Clus30+0.31475903553413 * (DEPT02 - 0.29257018768419)/1.15307534710204;
Clus30 = Clus30+0.35680641258699 * (DEPT03 - 1.08161935784085)/2.82203775857088;
Clus30 = Clus30+0.31539445831064 * (DEPT04 - 0.68006824879789)/2.28175674515779;
Clus30 = Clus30+0.29360569691748 * (DEPT05 - 0.54295020939972)/1.52515347226129;
Clus1 = Clus1+0.08539360410374 * (DEPT06 - 0.85925236544129)/1.98131768775175;
Clus31 = Clus31+0.21799066207907 * (DEPT07 - 0.02559329920893)/0.31536747776311;
Clus31 = Clus31+0.33993271338746 * (DEPT08 - 0.31512331316891)/1.29408639394269;
Clus31 = Clus31+0.34186033539386 * (DEPT09 - 0.2486427795874)/1.20923480324609;
Clus31 = Clus31+0.35421920019149 * (DEPT10 - 0.39066232356134)/1.7648701612552;
Clus31 = Clus31+0.28393608567866 * (DEPT11 - 0.15141926477431)/0.76300583506574;
Clus31 = Clus31+0.38386073638767 * (DEPT12 - 0.21448735846129)/0.89341788675275;
Clus1 = Clus1+0.10265921945045 * (DEPT13 - 1.30395532805956)/2.58742913517547;
Clus1 = Clus1+0.09382483235441 * (DEPT14 - 0.83527221963704)/2.18699342328426;
Clus1 = Clus1+0.06295443147815 * (DEPT15 - 0.28949899177912)/1.23869079532202;
Clus1 = Clus1+0.06325473542235 * (DEPT16 - 0.22491081123002)/1.0272304883634;
Clus1 = Clus1+0.05685701687127 * (DEPT17 - 0.19466418489219)/0.960753111967;
Clus33 = Clus33+0.55584809459247 * (DEPT18 - 0.1317512021095)/0.70116887678934;
Clus33 = Clus33+0.47715127706675 * (DEPT19 - 0.07324336900884)/0.59281735227563;
Clus33 = Clus33+0.46283809727038 * (DEPT20 - 0.02956413835892)/0.31025698407933;
Clus33 = Clus33+0.38062270827744 * (DEPT21 - 0.01821002016441)/0.24509272697267;
Clus1 = Clus1+0.11270007233835 * (DEPT22 - 2.12771831859779)/3.55134640550257;
Clus32 = Clus32+0.60605266548224 * (DEPT23 - 2.14223669923995)/3.81941288304535;
Clus32 = Clus32+0.60605266548224 * (DEPT24 - 0.64039087947882)/1.70711269742472;
Clus6 = Clus6+0.26635393730034 * (DEPT25 - 1.77676438653637)/4.75421718243184;
Clus10 = Clus10+0.26679703902057 * (DEPT26 - 0.19075539010392)/0.91270742425277;
Clus1 = Clus1+0.07540932251311 * (DEPT27 - 0.58712579494338)/1.55259848403997;
Clus8 = Clus8+0.50586446117948 * (DOLINDEA - 47.8585866898046)/37.591191668842;
Clus1 = Clus1+0.14866842285081 * (DOLINDET - 197.869031487513)/314.244548218948;
Clus5 = Clus5+0.34040516245314 * (DOLL24 - 45.4938073522568)/93.9875146751151;
Clus24 = Clus24+0.53431022831305 * (DOLLARQ01 - 3.60255901969907)/18.9572343997303;
Clus23 = Clus23+0.53635920804358 * (DOLLARQ02 - 3.71090770901194)/20.7285900605152;
Clus11 = Clus11+0.53251837592186 * (DOLLARQ03 - 2.77052582596556)/15.8095808048519;
Clus16 = Clus16+0.53398718553838 * (DOLLARQ04 - 4.67856274236079)/22.181986153492;
Clus17 = Clus17+0.53548666653293 * (DOLLARQ05 - 4.32741461144718)/21.5182033567075;
Clus13 = Clus13+0.53337003658551 * (DOLLARQ06 - 3.88379649449356)/20.0626675130808;
Clus25 = Clus25+0.53620252678703 * (DOLLARQ07 - 4.19153187529083)/21.9984516452687;
Clus28 = Clus28+0.54119921647341 * (DOLLARQ08 - 6.15043803319373)/27.3333023843591;
Clus22 = Clus22+0.5349541071483 * (DOLLARQ09 - 4.29424383434155)/20.7683103640238;
Clus9 = Clus9+0.53279724233879 * (DOLLARQ10 - 3.64839584302776)/18.9957061824675;
Clus15 = Clus15+0.53532885078822 * (DOLLARQ11 - 4.15352411974562)/20.8177653006881;
Clus6 = Clus6+0.3683415196646 * (DOLLARQ12 - 6.39860555297037)/27.403980773023;
Clus26 = Clus26+0.54383527719424 * (DOLLARQ13 - 5.38680471537149)/25.9110809016436;
Clus20 = Clus20+0.54398954027119 * (DOLLARQ14 - 4.43791499922444)/23.752188577194;
Clus7 = Clus7+0.53531614157592 * (DOLLARQ15 - 4.90567023421746)/23.5349065932921;
Clus18 = Clus18+0.53714970024584 * (DOLLARQ16 - 7.79008624166279)/31.0104071776129;
Clus5 = Clus5+0.44436827521592 * (DOLLARQ17 - 5.57017403443462)/26.1415799982751;
Clus19 = Clus19+0.53306278493927 * (DOLLARQ18 - 4.78568140220257)/22.3927978593641;
Clus14 = Clus14+0.53462067704059 * (DOLLARQ19 - 4.33358802543818)/21.704742358276;
Clus10 = Clus10+0.47928623815107 * (DOLLARQ20 - 8.71046657360012)/32.6472704396304;
Clus21 = Clus21+0.53908041935557 * (DOLLARQ21 - 4.7463651310687)/24.268088572003;
Clus12 = Clus12+0.53808320116509 * (DOLLARQ22 - 4.88413153404684)/24.8521912523649;
Clus8 = Clus8+0.50586446117948 * (DOLNETDA - 45.411597554134)/36.1502695431938;
Clus1 = Clus1+0.14795449132882 * (DOLNETDT - 189.18095548317)/303.615750735174;
Clus2 = Clus2+-0.26053652561954 * (DTBUYLST - 16579.2557778811)/1226.01924677542;
Clus27 = Clus27+0.44209782255401 * (DTBUYORG - 15219.1123002947)/1827.11395772537;
Clus1 = Clus1+0.13748025428471 * (FREQPRCH - 4.18160384675042)/5.31459540671444;
Clus2 = Clus2+0.26053524523571 * (MONLAST - 38.7579959671164)/40.2783526824403;
Clus27 = Clus27+-0.44211365169848 * (TENURE - 83.4682798200713)/60.0499642836247;
Clus24 = Clus24+0.53431022831306 * (TOTORDQ01 - 0.07833100666976)/0.31375640071534;
Clus23 = Clus23+0.53635920804358 * (TOTORDQ02 - 0.07383279044516)/0.30498525646648;
Clus11 = Clus11+0.53251837592187 * (TOTORDQ03 - 0.05841476655808)/0.25663649019308;
Clus16 = Clus16+0.53398718553838 * (TOTORDQ04 - 0.09058476810919)/0.33923460400983;
Clus17 = Clus17+0.53548666653293 * (TOTORDQ05 - 0.08766868310842)/0.32373427535999;
Clus13 = Clus13+0.53337003658551 * (TOTORDQ06 - 0.08068869241507)/0.31127041208068;
Clus25 = Clus25+0.53620252678703 * (TOTORDQ07 - 0.08583837443772)/0.3225455818214;
Clus28 = Clus28+0.54119921647341 * (TOTORDQ08 - 0.11782224290367)/0.39692742169452;
Clus22 = Clus22+0.5349541071483 * (TOTORDQ09 - 0.09120521172638)/0.32676782706381;
Clus9 = Clus9+0.53279724233879 * (TOTORDQ10 - 0.07501163331782)/0.2991488551838;
Clus15 = Clus15+0.53532885078822 * (TOTORDQ11 - 0.08630370715061)/0.31791570298113;
Clus6 = Clus6+0.38864318218989 * (TOTORDQ12 - 0.12619823173569)/0.4074226605598;
Clus26 = Clus26+0.54383527719424 * (TOTORDQ13 - 0.10832945556072)/0.35251925488707;
Clus20 = Clus20+0.54398954027119 * (TOTORDQ14 - 0.08894059252365)/0.31938115502111;
Clus7 = Clus7+0.53531614157592 * (TOTORDQ15 - 0.09821622460058)/0.342400248125;
Clus18 = Clus18+0.53714970024584 * (TOTORDQ16 - 0.14620753838994)/0.42506049526083;
Clus5 = Clus5+0.42389042465751 * (TOTORDQ17 - 0.108267411199)/0.35925036974258;
Clus19 = Clus19+0.53306278493927 * (TOTORDQ18 - 0.09319063130138)/0.32753587031264;
Clus14 = Clus14+0.53462067704059 * (TOTORDQ19 - 0.08217775709632)/0.30645832771871;
Clus10 = Clus10+0.48436605619674 * (TOTORDQ20 - 0.15985729796804)/0.46170113594525;
Clus21 = Clus21+0.53908041935557 * (TOTORDQ21 - 0.09182565534357)/0.32980785722872;
Clus12 = Clus12+0.53808320116509 * (TOTORDQ22 - 0.08611757406545)/0.31443413012517;
Clus1 = Clus1+0.14704520640825 * (UNITSIDD - 10.9602916085)/17.1055734908767;
Clus2 = Clus2+0.11350135065976 * (UNITSLAP - 22.0808611006276)/19.5877886329162;
Clus27 = Clus27+0.14816580906294 * (UNTLANPO - 2.67912081406979)/2.42439611488132;
Clus4 = Clus4+-0.33333333333333 * (BOTHPAYM0 - 0.80645261361873)/0.39508434277919;
Clus4 = Clus4+0.33333333333333 * (BOTHPAYM1 - 0.19354738638126)/0.39508434277919;
Clus3 = Clus3+-0.33333333333333 * (CCPAYM0 - 0.58303086706995)/0.49306532733706;
Clus3 = Clus3+0.33333333333333 * (CCPAYM1 - 0.41696913293004)/0.49306532733706;
Clus3 = Clus3+0.33333333333333 * (METHPAYMCC - 0.41696913293004)/0.49306532733706;
Clus29 = Clus29+0.33333333333333 * (METHPAYMCK - 0.3029315960912)/0.45953301856693;
Clus2 = Clus2+0.22295808801358 * (METHPAYMDK - 0.08655188459748)/0.28118162916549;
Clus4 = Clus4+0.33333333333333 * (METHPAYMXBOT - 0.19354738638126)/0.39508434277919;
Clus29 = Clus29+-0.33333333333333 * (PCPAYM0 - 0.69706840390879)/0.45953301856693;
Clus29 = Clus29+0.33333333333333 * (PCPAYM1 - 0.3029315960912)/0.45953301856693;
