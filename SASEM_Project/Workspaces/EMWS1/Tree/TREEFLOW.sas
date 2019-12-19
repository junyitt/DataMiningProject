****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_audience_score_positive  $    5; 
LENGTH I_audience_score_positive  $    5; 
LENGTH U_audience_score_positive  $    5; 
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_audience_score_positiveTrue = 
'Predicted: audience_score_positive=True' ;
label P_audience_score_positiveFalse = 
'Predicted: audience_score_positive=False' ;
label Q_audience_score_positiveTrue = 
'Unadjusted P: audience_score_positive=True' ;
label Q_audience_score_positiveFalse = 
'Unadjusted P: audience_score_positive=False' ;
label V_audience_score_positiveTrue = 
'Validated: audience_score_positive=True' ;
label V_audience_score_positiveFalse = 
'Validated: audience_score_positive=False' ;
label R_audience_score_positiveTrue = 
'Residual: audience_score_positive=True' ;
label R_audience_score_positiveFalse = 
'Residual: audience_score_positive=False' ;
label F_audience_score_positive = 'From: audience_score_positive' ;
label I_audience_score_positive = 'Into: audience_score_positive' ;
label U_audience_score_positive = 
'Unnormalized Into: audience_score_positive' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_5 $      5; DROP _ARBFMT_5; 
_ARBFMT_5 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


_ARBFMT_5 = PUT( audience_score_positive , $5.);
 %DMNORMCP( _ARBFMT_5, F_audience_score_positive );

******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( genre_HistDocument , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
  IF  NOT MISSING(tomatometer_count ) AND 
                    27.5 <= tomatometer_count  THEN DO;
    _NODE_  =                    7;
    _LEAF_  =                   11;
    P_audience_score_positiveTrue  =     0.86184210526315;
    P_audience_score_positiveFalse  =     0.13815789473684;
    Q_audience_score_positiveTrue  =     0.86184210526315;
    Q_audience_score_positiveFalse  =     0.13815789473684;
    V_audience_score_positiveTrue  =     0.88079470198675;
    V_audience_score_positiveFalse  =     0.11920529801324;
    I_audience_score_positive  = 'TRUE' ;
    U_audience_score_positive  = 'True' ;
    END;
  ELSE DO;
    IF  NOT MISSING(IMP_total_gross ) AND 
      IMP_total_gross  <               4674.5 THEN DO;
      _NODE_  =                   12;
      _LEAF_  =                    9;
      P_audience_score_positiveTrue  =                 0.36;
      P_audience_score_positiveFalse  =                 0.64;
      Q_audience_score_positiveTrue  =                 0.36;
      Q_audience_score_positiveFalse  =                 0.64;
      V_audience_score_positiveTrue  =     0.45833333333333;
      V_audience_score_positiveFalse  =     0.54166666666666;
      I_audience_score_positive  = 'FALSE' ;
      U_audience_score_positive  = 'False' ;
      END;
    ELSE DO;
      _NODE_  =                   13;
      _LEAF_  =                   10;
      P_audience_score_positiveTrue  =     0.68036529680365;
      P_audience_score_positiveFalse  =     0.31963470319634;
      Q_audience_score_positiveTrue  =     0.68036529680365;
      Q_audience_score_positiveFalse  =     0.31963470319634;
      V_audience_score_positiveTrue  =     0.67948717948717;
      V_audience_score_positiveFalse  =     0.32051282051282;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(tomatometer_count ) AND 
                   140.5 <= tomatometer_count  THEN DO;
    IF  NOT MISSING(IMP_domestic_opening ) AND 
      IMP_domestic_opening  <            3169859.5 THEN DO;
      _NODE_  =                   10;
      _LEAF_  =                    6;
      P_audience_score_positiveTrue  =     0.83660130718954;
      P_audience_score_positiveFalse  =     0.16339869281045;
      Q_audience_score_positiveTrue  =     0.83660130718954;
      Q_audience_score_positiveFalse  =     0.16339869281045;
      V_audience_score_positiveTrue  =      0.7361963190184;
      V_audience_score_positiveFalse  =     0.26380368098159;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    ELSE DO;
      IF  NOT MISSING(IMP_domestic_gross ) AND 
                 100753420.5 <= IMP_domestic_gross  THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                    8;
        P_audience_score_positiveTrue  =     0.82926829268292;
        P_audience_score_positiveFalse  =     0.17073170731707;
        Q_audience_score_positiveTrue  =     0.82926829268292;
        Q_audience_score_positiveFalse  =     0.17073170731707;
        V_audience_score_positiveTrue  =                  0.8;
        V_audience_score_positiveFalse  =                  0.2;
        I_audience_score_positive  = 'TRUE' ;
        U_audience_score_positive  = 'True' ;
        END;
      ELSE DO;
        _NODE_  =                   22;
        _LEAF_  =                    7;
        P_audience_score_positiveTrue  =     0.45578231292517;
        P_audience_score_positiveFalse  =     0.54421768707483;
        Q_audience_score_positiveTrue  =     0.45578231292517;
        Q_audience_score_positiveFalse  =     0.54421768707483;
        V_audience_score_positiveTrue  =     0.45138888888888;
        V_audience_score_positiveFalse  =     0.54861111111111;
        I_audience_score_positive  = 'FALSE' ;
        U_audience_score_positive  = 'False' ;
        END;
      END;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( genre_DramaTele , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      _NODE_  =                    9;
      _LEAF_  =                    5;
      P_audience_score_positiveTrue  =     0.26086956521739;
      P_audience_score_positiveFalse  =      0.7391304347826;
      Q_audience_score_positiveTrue  =     0.26086956521739;
      Q_audience_score_positiveFalse  =      0.7391304347826;
      V_audience_score_positiveTrue  =      0.2832618025751;
      V_audience_score_positiveFalse  =     0.71673819742489;
      I_audience_score_positive  = 'FALSE' ;
      U_audience_score_positive  = 'False' ;
      END;
    ELSE DO;
      IF  NOT MISSING(IMP_runtime ) AND 
                       101.5 <= IMP_runtime  THEN DO;
        _ARBFMT_12 = PUT( genre_ThrillMysSusp , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ) THEN DO;
          IF  NOT MISSING(IMP_runtime ) AND 
                             119 <= IMP_runtime  THEN DO;
            _NODE_  =                   43;
            _LEAF_  =                    4;
            P_audience_score_positiveTrue  =                  0.8;
            P_audience_score_positiveFalse  =                  0.2;
            Q_audience_score_positiveTrue  =                  0.8;
            Q_audience_score_positiveFalse  =                  0.2;
            V_audience_score_positiveTrue  =                0.625;
            V_audience_score_positiveFalse  =                0.375;
            I_audience_score_positive  = 'TRUE' ;
            U_audience_score_positive  = 'True' ;
            END;
          ELSE DO;
            _NODE_  =                   42;
            _LEAF_  =                    3;
            P_audience_score_positiveTrue  =     0.24444444444444;
            P_audience_score_positiveFalse  =     0.75555555555555;
            Q_audience_score_positiveTrue  =     0.24444444444444;
            Q_audience_score_positiveFalse  =     0.75555555555555;
            V_audience_score_positiveTrue  =     0.33870967741935;
            V_audience_score_positiveFalse  =     0.66129032258064;
            I_audience_score_positive  = 'FALSE' ;
            U_audience_score_positive  = 'False' ;
            END;
          END;
        ELSE DO;
          _NODE_  =                   30;
          _LEAF_  =                    2;
          P_audience_score_positiveTrue  =     0.59011627906976;
          P_audience_score_positiveFalse  =     0.40988372093023;
          Q_audience_score_positiveTrue  =     0.59011627906976;
          Q_audience_score_positiveFalse  =     0.40988372093023;
          V_audience_score_positiveTrue  =     0.53571428571428;
          V_audience_score_positiveFalse  =     0.46428571428571;
          I_audience_score_positive  = 'TRUE' ;
          U_audience_score_positive  = 'True' ;
          END;
        END;
      ELSE DO;
        _NODE_  =                   16;
        _LEAF_  =                    1;
        P_audience_score_positiveTrue  =     0.35911602209944;
        P_audience_score_positiveFalse  =     0.64088397790055;
        Q_audience_score_positiveTrue  =     0.35911602209944;
        Q_audience_score_positiveFalse  =     0.64088397790055;
        V_audience_score_positiveTrue  =     0.36007827788649;
        V_audience_score_positiveFalse  =      0.6399217221135;
        I_audience_score_positive  = 'FALSE' ;
        U_audience_score_positive  = 'False' ;
        END;
      END;
    END;
  END;

*****  RESIDUALS R_ *************;
IF  F_audience_score_positive  NE 'TRUE' 
AND F_audience_score_positive  NE 'FALSE'  THEN DO; 
        R_audience_score_positiveTrue  = .;
        R_audience_score_positiveFalse  = .;
 END;
 ELSE DO;
       R_audience_score_positiveTrue  =  -P_audience_score_positiveTrue ;
       R_audience_score_positiveFalse  =  -P_audience_score_positiveFalse ;
       SELECT( F_audience_score_positive  );
          WHEN( 'TRUE'  ) R_audience_score_positiveTrue  = 
        R_audience_score_positiveTrue  +1;
          WHEN( 'FALSE'  ) R_audience_score_positiveFalse  = 
        R_audience_score_positiveFalse  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

