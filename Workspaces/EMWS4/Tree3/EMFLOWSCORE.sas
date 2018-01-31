****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_RESPOND  $   12;
LENGTH I_RESPOND  $   12;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_RESPOND1 = 'Predicted: RESPOND=1' ;
label P_RESPOND0 = 'Predicted: RESPOND=0' ;
label Q_RESPOND1 = 'Unadjusted P: RESPOND=1' ;
label Q_RESPOND0 = 'Unadjusted P: RESPOND=0' ;
label V_RESPOND1 = 'Validated: RESPOND=1' ;
label V_RESPOND0 = 'Validated: RESPOND=0' ;
label R_RESPOND1 = 'Residual: RESPOND=1' ;
label R_RESPOND0 = 'Residual: RESPOND=0' ;
label F_RESPOND = 'From: RESPOND' ;
label I_RESPOND = 'Into: RESPOND' ;
label U_RESPOND = 'Unnormalized Into: RESPOND' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
 
 
_ARBFMT_12 = PUT( RESPOND , BEST12.);
 %DMNORMCP( _ARBFMT_12, F_RESPOND );
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DTBUYORG ) AND
               17715.5 <= DTBUYORG  THEN DO;
  _NODE_  =                    3;
  _LEAF_  =                   13;
  P_RESPOND1  =                    1;
  P_RESPOND0  =                    0;
  Q_RESPOND1  =                    1;
  Q_RESPOND0  =                    0;
  V_RESPOND1  =                    1;
  V_RESPOND0  =                    0;
  I_RESPOND  = '1' ;
  U_RESPOND  =                    1;
  END;
ELSE DO;
  IF  NOT MISSING(DOLL24 ) AND
                 119.975 <= DOLL24  THEN DO;
    IF  NOT MISSING(DEPT25 ) AND
                      32.5 <= DEPT25  THEN DO;
      _NODE_  =                    9;
      _LEAF_  =                   12;
      P_RESPOND1  =      0.4390243902439;
      P_RESPOND0  =     0.56097560975609;
      Q_RESPOND1  =      0.4390243902439;
      Q_RESPOND0  =     0.56097560975609;
      V_RESPOND1  =      0.3076923076923;
      V_RESPOND0  =     0.69230769230769;
      I_RESPOND  = '0' ;
      U_RESPOND  =                    0;
      END;
    ELSE DO;
      IF  NOT MISSING(FREQPRCH ) AND
                         6.5 <= FREQPRCH  THEN DO;
        IF  NOT MISSING(TOTORDQ22 ) AND
                           2.5 <= TOTORDQ22  THEN DO;
          _NODE_  =                   27;
          _LEAF_  =                   11;
          P_RESPOND1  =     0.52380952380952;
          P_RESPOND0  =     0.47619047619047;
          Q_RESPOND1  =     0.52380952380952;
          Q_RESPOND0  =     0.47619047619047;
          V_RESPOND1  =     0.66666666666666;
          V_RESPOND0  =     0.33333333333333;
          I_RESPOND  = '1' ;
          U_RESPOND  =                    1;
          END;
        ELSE DO;
          IF  NOT MISSING(DOLL24 ) AND
                         293.525 <= DOLL24  THEN DO;
            _NODE_  =                   41;
            _LEAF_  =                   10;
            P_RESPOND1  =     0.23019801980198;
            P_RESPOND0  =     0.76980198019802;
            Q_RESPOND1  =     0.23019801980198;
            Q_RESPOND0  =     0.76980198019802;
            V_RESPOND1  =     0.20171673819742;
            V_RESPOND0  =     0.79828326180257;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          ELSE DO;
            _NODE_  =                   40;
            _LEAF_  =                    9;
            P_RESPOND1  =     0.13790035587188;
            P_RESPOND0  =     0.86209964412811;
            Q_RESPOND1  =     0.13790035587188;
            Q_RESPOND0  =     0.86209964412811;
            V_RESPOND1  =     0.15535714285714;
            V_RESPOND0  =     0.84464285714285;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          END;
        END;
      ELSE DO;
        _NODE_  =                   14;
        _LEAF_  =                    8;
        P_RESPOND1  =     0.09039548022598;
        P_RESPOND0  =     0.90960451977401;
        Q_RESPOND1  =     0.09039548022598;
        Q_RESPOND0  =     0.90960451977401;
        V_RESPOND1  =     0.07944389275074;
        V_RESPOND0  =     0.92055610724925;
        I_RESPOND  = '0' ;
        U_RESPOND  =                    0;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(DAYLAST ) AND
      DAYLAST  <                684.5 THEN DO;
      IF  NOT MISSING(ACTBUY ) AND
                         1.5 <= ACTBUY  THEN DO;
        IF  NOT MISSING(DEPT04 ) AND
                           8.5 <= DEPT04  THEN DO;
          _NODE_  =                   21;
          _LEAF_  =                    6;
          P_RESPOND1  =     0.22302158273381;
          P_RESPOND0  =     0.77697841726618;
          Q_RESPOND1  =     0.22302158273381;
          Q_RESPOND0  =     0.77697841726618;
          V_RESPOND1  =     0.16666666666666;
          V_RESPOND0  =     0.83333333333333;
          I_RESPOND  = '0' ;
          U_RESPOND  =                    0;
          END;
        ELSE DO;
          IF  NOT MISSING(ACTBUY ) AND
                             3.5 <= ACTBUY  THEN DO;
            _NODE_  =                   33;
            _LEAF_  =                    5;
            P_RESPOND1  =     0.13412228796844;
            P_RESPOND0  =     0.86587771203155;
            Q_RESPOND1  =     0.13412228796844;
            Q_RESPOND0  =     0.86587771203155;
            V_RESPOND1  =     0.14396887159533;
            V_RESPOND0  =     0.85603112840466;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          ELSE DO;
            _NODE_  =                   32;
            _LEAF_  =                    4;
            P_RESPOND1  =     0.08362919132149;
            P_RESPOND0  =      0.9163708086785;
            Q_RESPOND1  =     0.08362919132149;
            Q_RESPOND0  =      0.9163708086785;
            V_RESPOND1  =     0.07595993322203;
            V_RESPOND0  =     0.92404006677796;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(DOLNETDT ) AND
          DOLNETDT  <               52.675 THEN DO;
          _NODE_  =                   18;
          _LEAF_  =                    1;
          P_RESPOND1  =     0.03650231544538;
          P_RESPOND0  =     0.96349768455461;
          Q_RESPOND1  =     0.03650231544538;
          Q_RESPOND0  =     0.96349768455461;
          V_RESPOND1  =     0.04773996952767;
          V_RESPOND0  =     0.95226003047232;
          I_RESPOND  = '0' ;
          U_RESPOND  =                    0;
          END;
        ELSE DO;
          IF  NOT MISSING(DEPT25 ) AND
                             1.5 <= DEPT25  THEN DO;
            _NODE_  =                   31;
            _LEAF_  =                    3;
            P_RESPOND1  =     0.08140262993112;
            P_RESPOND0  =     0.91859737006887;
            Q_RESPOND1  =     0.08140262993112;
            Q_RESPOND0  =     0.91859737006887;
            V_RESPOND1  =     0.07115135834411;
            V_RESPOND0  =     0.92884864165588;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          ELSE DO;
            _NODE_  =                   30;
            _LEAF_  =                    2;
            P_RESPOND1  =     0.05296145408962;
            P_RESPOND0  =     0.94703854591037;
            Q_RESPOND1  =     0.05296145408962;
            Q_RESPOND0  =     0.94703854591037;
            V_RESPOND1  =     0.05428747686613;
            V_RESPOND0  =     0.94571252313386;
            I_RESPOND  = '0' ;
            U_RESPOND  =                    0;
            END;
          END;
        END;
      END;
    ELSE DO;
      _NODE_  =                    7;
      _LEAF_  =                    7;
      P_RESPOND1  =      0.0343143025309;
      P_RESPOND0  =     0.96568569746909;
      Q_RESPOND1  =      0.0343143025309;
      Q_RESPOND0  =     0.96568569746909;
      V_RESPOND1  =     0.03600810778585;
      V_RESPOND0  =     0.96399189221414;
      I_RESPOND  = '0' ;
      U_RESPOND  =                    0;
      END;
    END;
  END;
 
*****  RESIDUALS R_ *************;
IF  F_RESPOND  NE '1'
AND F_RESPOND  NE '0'  THEN DO;
        R_RESPOND1  = .;
        R_RESPOND0  = .;
 END;
 ELSE DO;
       R_RESPOND1  =  -P_RESPOND1 ;
       R_RESPOND0  =  -P_RESPOND0 ;
       SELECT( F_RESPOND  );
          WHEN( '1'  ) R_RESPOND1  = R_RESPOND1  +1;
          WHEN( '0'  ) R_RESPOND0  = R_RESPOND0  +1;
       END;
 END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
