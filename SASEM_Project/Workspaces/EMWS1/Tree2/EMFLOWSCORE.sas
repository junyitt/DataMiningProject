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
IF  NOT MISSING(IMP_ss_mean ) AND
      0.76992063492063 <= IMP_ss_mean  THEN DO;
  IF  NOT MISSING(IMP_ss_std ) AND
        0.40709466985829 <= IMP_ss_std  THEN DO;
    IF  NOT MISSING(IMP_domestic_gross ) AND
          145735.087697423 <= IMP_domestic_gross  THEN DO;
      _NODE_  =                   84;
      _LEAF_  =                    8;
      P_audience_score_positiveTrue  =     0.73972602739726;
      P_audience_score_positiveFalse  =     0.26027397260273;
      Q_audience_score_positiveTrue  =     0.73972602739726;
      Q_audience_score_positiveFalse  =     0.26027397260273;
      V_audience_score_positiveTrue  =     0.75903614457831;
      V_audience_score_positiveFalse  =     0.24096385542168;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    ELSE DO;
      _NODE_  =                   83;
      _LEAF_  =                    7;
      P_audience_score_positiveTrue  =     0.44805194805194;
      P_audience_score_positiveFalse  =     0.55194805194805;
      Q_audience_score_positiveTrue  =     0.44805194805194;
      Q_audience_score_positiveFalse  =     0.55194805194805;
      V_audience_score_positiveTrue  =     0.47619047619047;
      V_audience_score_positiveFalse  =     0.52380952380952;
      I_audience_score_positive  = 'FALSE' ;
      U_audience_score_positive  = 'False' ;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(IMP_user_rating_count ) AND
      IMP_user_rating_count  <                474.5 THEN DO;
      _NODE_  =                   81;
      _LEAF_  =                    5;
      P_audience_score_positiveTrue  =     0.61168384879725;
      P_audience_score_positiveFalse  =     0.38831615120274;
      Q_audience_score_positiveTrue  =     0.61168384879725;
      Q_audience_score_positiveFalse  =     0.38831615120274;
      V_audience_score_positiveTrue  =     0.57051282051282;
      V_audience_score_positiveFalse  =     0.42948717948717;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    ELSE DO;
      _NODE_  =                   82;
      _LEAF_  =                    6;
      P_audience_score_positiveTrue  =     0.86116700201207;
      P_audience_score_positiveFalse  =     0.13883299798792;
      Q_audience_score_positiveTrue  =     0.86116700201207;
      Q_audience_score_positiveFalse  =     0.13883299798792;
      V_audience_score_positiveTrue  =     0.83736263736263;
      V_audience_score_positiveFalse  =     0.16263736263736;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(IMP_ss_std ) AND
    IMP_ss_std  <     0.46818343807915 THEN DO;
    IF  NOT MISSING(IMP_user_rating_count ) AND
                     15790 <= IMP_user_rating_count  THEN DO;
      _NODE_  =                   78;
      _LEAF_  =                    2;
      P_audience_score_positiveTrue  =     0.83098591549295;
      P_audience_score_positiveFalse  =     0.16901408450704;
      Q_audience_score_positiveTrue  =     0.83098591549295;
      Q_audience_score_positiveFalse  =     0.16901408450704;
      V_audience_score_positiveTrue  =     0.70930232558139;
      V_audience_score_positiveFalse  =      0.2906976744186;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    ELSE DO;
      _NODE_  =                   77;
      _LEAF_  =                    1;
      P_audience_score_positiveTrue  =     0.36363636363636;
      P_audience_score_positiveFalse  =     0.63636363636363;
      Q_audience_score_positiveTrue  =     0.36363636363636;
      Q_audience_score_positiveFalse  =     0.63636363636363;
      V_audience_score_positiveTrue  =     0.42613636363636;
      V_audience_score_positiveFalse  =     0.57386363636363;
      I_audience_score_positive  = 'FALSE' ;
      U_audience_score_positive  = 'False' ;
      END;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( genre_HistDocument , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('1' ) THEN DO;
      _NODE_  =                   79;
      _LEAF_  =                    3;
      P_audience_score_positiveTrue  =      0.6025641025641;
      P_audience_score_positiveFalse  =     0.39743589743589;
      Q_audience_score_positiveTrue  =      0.6025641025641;
      Q_audience_score_positiveFalse  =     0.39743589743589;
      V_audience_score_positiveTrue  =      0.6547619047619;
      V_audience_score_positiveFalse  =     0.34523809523809;
      I_audience_score_positive  = 'TRUE' ;
      U_audience_score_positive  = 'True' ;
      END;
    ELSE DO;
      _NODE_  =                   80;
      _LEAF_  =                    4;
      P_audience_score_positiveTrue  =     0.21258134490238;
      P_audience_score_positiveFalse  =     0.78741865509761;
      Q_audience_score_positiveTrue  =     0.21258134490238;
      Q_audience_score_positiveFalse  =     0.78741865509761;
      V_audience_score_positiveTrue  =     0.22041259500542;
      V_audience_score_positiveFalse  =     0.77958740499457;
      I_audience_score_positive  = 'FALSE' ;
      U_audience_score_positive  = 'False' ;
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
 
drop _LEAF_;
