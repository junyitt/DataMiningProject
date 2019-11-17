*;
* IMPUTE VARIABLE: ss_p25;
*;
format IMP_ss_p25 BEST12.0;
label IMP_ss_p25 = 'Imputed ss_p25';
IMP_ss_p25 = ss_p25;
if missing(IMP_ss_p25) then do;
****************************************************************;
****** DECISION TREE SCORING CODE ******;
****************************************************************;
****** LENGTHS OF NEW CHARACTER VARIABLES ******;
LENGTH _WARN_ $ 4;
****** LABELS FOR NEW VARIABLES ******;
label P_ss_p25 = 'Predicted: ss_p25';
label _WARN_ = 'Warnings';
****** ASSIGN OBSERVATION TO NODE ******;
DROP _BRANCH_;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.74925149700598 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.74925149700598 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.44106558199239 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.44106558199239 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_median ) THEN DO;
IF ss_median < 0.75 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.75 <= ss_median THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.75063451776649 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.75063451776649 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.4497403061833 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.4497403061833 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_p25 = 0.75;
END;
ELSE DO;
P_ss_p25 = 1;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.71383075523202 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.71383075523202 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.45835850790782 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.45835850790782 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 412 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 412 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 24 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
24 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 24 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 24 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.45542903051592 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.45542903051592 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 12.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
12.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 12.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 12.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.46500470819159 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.46500470819159 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.73030303030303 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.73030303030303 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.45931315358977 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.45931315358977 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(domestic_gross ) THEN DO;
IF domestic_gross < 73591.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 73591.5 <= domestic_gross THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_p25 = 0.5;
END;
ELSE DO;
P_ss_p25 = 0.23076923076923;
END;
END;
ELSE DO;
P_ss_p25 = 0.5;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.74174068879538 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.74174068879538 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.43924596667758 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.43924596667758 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_p25 = 0.40277777777777;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.73312629399585 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.73312629399585 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.44345141528112 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.44345141528112 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(domestic_gross ) THEN DO;
IF 14669.5 <= domestic_gross THEN DO;
_BRANCH_ = 1;
END;
ELSE IF domestic_gross < 14669.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 63 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
63 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 63 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 63 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.44231058600379 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.44231058600379 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_p25 = 0;
END;
ELSE DO;
P_ss_p25 = 0.21052631578947;
END;
END;
ELSE DO;
P_ss_p25 = 0.00390625;
END;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.66577301161751 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.66577301161751 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.47418847630642 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.47418847630642 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 11 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
11 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 11 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 11 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_std ) THEN DO;
IF 0.49618298195866 <= ss_std THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_std < 0.49618298195866 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_p25 = 0.205;
END;
ELSE DO;
P_ss_p25 = 0;
END;
END;
ELSE DO;
P_ss_p25 = 0;
END;
END;
END;
****************************************************************;
****** END OF DECISION TREE SCORING CODE ******;
****************************************************************;
*;
* ASSIGN VALUE TO: ss_p25;
*;
IMP_ss_p25 = P_SS_P25;
END;
