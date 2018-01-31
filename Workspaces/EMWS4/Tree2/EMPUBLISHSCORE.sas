****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
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
label I_RESPOND = 'Into: RESPOND' ;
label U_RESPOND = 'Unnormalized Into: RESPOND' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12;
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
 
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(DTBUYORG ) AND
               17715.5 <= DTBUYORG  THEN DO;
  _NODE_  =                    3;
  _LEAF_  =                    6;
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
      _LEAF_  =                    5;
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
          _LEAF_  =                    4;
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
          _NODE_  =                   26;
          _LEAF_  =                    3;
          P_RESPOND1  =     0.16230366492146;
          P_RESPOND0  =     0.83769633507853;
          Q_RESPOND1  =     0.16230366492146;
          Q_RESPOND0  =     0.83769633507853;
          V_RESPOND1  =     0.16897856242118;
          V_RESPOND0  =     0.83102143757881;
          I_RESPOND  = '0' ;
          U_RESPOND  =                    0;
          END;
        END;
      ELSE DO;
        _NODE_  =                   14;
        _LEAF_  =                    2;
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
    _NODE_  =                    4;
    _LEAF_  =                    1;
    P_RESPOND1  =      0.0463499825358;
    P_RESPOND0  =     0.95365001746419;
    Q_RESPOND1  =      0.0463499825358;
    Q_RESPOND0  =     0.95365001746419;
    V_RESPOND1  =     0.04750893420222;
    V_RESPOND0  =     0.95249106579777;
    I_RESPOND  = '0' ;
    U_RESPOND  =                    0;
    END;
  END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
