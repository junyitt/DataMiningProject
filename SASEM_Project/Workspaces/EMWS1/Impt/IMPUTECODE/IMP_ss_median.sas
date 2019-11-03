*;
* IMPUTE VARIABLE: ss_median;
*;
format IMP_ss_median BEST12.0;
label IMP_ss_median = 'Imputed ss_median';
IMP_ss_median = ss_median;
if missing(IMP_ss_median) then do;
****************************************************************;
****** DECISION TREE SCORING CODE ******;
****************************************************************;
****** LENGTHS OF NEW CHARACTER VARIABLES ******;
LENGTH _WARN_ $ 4;
****** LABELS FOR NEW VARIABLES ******;
label P_ss_median = 'Predicted: ss_median';
label _WARN_ = 'Warnings';
****** ASSIGN OBSERVATION TO NODE ******;
DROP _BRANCH_;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.50135135135135 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.50135135135135 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_p75 ) THEN DO;
IF ss_p75 < 0.875 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.875 <= ss_p75 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.51821184558476 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.51821184558476 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.49852071005917 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.49852071005917 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF ss_std < 0.52463962228091 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.52463962228091 <= ss_std THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_median = 0.5;
END;
ELSE DO;
P_ss_median = 0;
END;
END;
ELSE DO;
P_ss_median = 1;
END;
****************************************************************;
****** END OF DECISION TREE SCORING CODE ******;
****************************************************************;
*;
* ASSIGN VALUE TO: ss_median;
*;
IMP_ss_median = P_SS_MEDIAN;
END;
