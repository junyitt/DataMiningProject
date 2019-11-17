*;
* IMPUTE VARIABLE: ss_std;
*;
format IMP_ss_std BEST12.0;
label IMP_ss_std = 'Imputed ss_std';
IMP_ss_std = ss_std;
if missing(IMP_ss_std) then do;
****************************************************************;
****** DECISION TREE SCORING CODE ******;
****************************************************************;
****** LENGTHS OF NEW CHARACTER VARIABLES ******;
LENGTH _WARN_ $ 4;
****** LABELS FOR NEW VARIABLES ******;
label P_ss_std = 'Predicted: ss_std';
label _WARN_ = 'Warnings';
****** TEMPORARY VARIABLES FOR FORMATTED VALUES ******;
LENGTH _ARBFMT_12 $ 12;
DROP _ARBFMT_12;
_ARBFMT_12 = ' ';
/* Initialize to avoid warning. */
****** ASSIGN OBSERVATION TO NODE ******;
IF NOT MISSING(ss_mean ) AND
0.87518996960486 <= ss_mean THEN DO;
DROP _BRANCH_;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.97944423296535 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.97944423296535 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF 8.5 <= ss_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_count < 8.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF 8.5 <= tomatometer_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF tomatometer_count < 8.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(markets ) AND
markets < 14 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(markets ) AND
14 <= markets THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(domestic_gross ) THEN DO;
IF domestic_gross < 146113.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 146113.5 <= domestic_gross THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(domestic_opening ) THEN DO;
IF domestic_opening < 6225487 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 6225487 <= domestic_opening THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.00791187772129;
END;
ELSE DO;
P_ss_std = 0;
END;
END;
ELSE DO;
IF NOT MISSING(ss_mean ) AND
0.91823899371069 <= ss_mean THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.94519519519519 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.94519519519519 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(runtime ) THEN DO;
IF 75.5 <= runtime THEN DO;
_BRANCH_ = 1;
END;
ELSE IF runtime < 75.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_FamilyKids ) THEN DO;
_ARBFMT_12 = PUT( genre_FamilyKids , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.9563492063492 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.9563492063492 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 22.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 22.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 22.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 22.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.22291151297766;
END;
ELSE DO;
P_ss_std = 0.19104675651341;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.92940199335548 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.92940199335548 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(runtime ) THEN DO;
IF 95.5 <= runtime THEN DO;
_BRANCH_ = 1;
END;
ELSE IF runtime < 95.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF 129 <= user_rating_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF user_rating_count < 129 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.93582704186684 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.93582704186684 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 15.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 15.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 15.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 15.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.24241090695644;
END;
ELSE DO;
P_ss_std = 0.25594444306373;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.92356377799415 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.92356377799415 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF 111 <= ss_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_count < 111 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF 111 <= tomatometer_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF tomatometer_count < 111 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.27323307779702;
END;
ELSE DO;
P_ss_std = 0.26568248048178;
END;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.90020746887966 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.90020746887966 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_Special_Interest ) THEN DO;
_ARBFMT_12 = PUT( genre_Special_Interest , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.90976933514246 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.90976933514246 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(runtime ) THEN DO;
IF 94.5 <= runtime THEN DO;
_BRANCH_ = 1;
END;
ELSE IF runtime < 94.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(domestic_opening ) THEN DO;
IF 1356.5 <= domestic_opening THEN DO;
_BRANCH_ = 1;
END;
ELSE IF domestic_opening < 1356.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 69 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
69 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 69 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 69 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF user_rating_count < 2277 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 2277 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.28135630212935;
END;
ELSE DO;
P_ss_std = 0.28722362147038;
END;
END;
ELSE DO;
P_ss_std = 0.29815637641757;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.88908112264513 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.88908112264513 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 366.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 366.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 366.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 366.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(user_rating_count ) AND
user_rating_count < 493 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(user_rating_count ) AND
493 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 19.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 19.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 19.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 19.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.31563540147841;
END;
ELSE DO;
P_ss_std = 0.30889673244535;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 17.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
17.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 17.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 17.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF user_rating_count < 197.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 197.5 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.33307024377851;
END;
ELSE DO;
P_ss_std = 0.32375196271074;
END;
END;
END;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_p25 ) AND
ss_p25 < 0.875 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_p25 ) AND
0.875 <= ss_p25 THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF ss_mean < 0.75063451776649 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.75063451776649 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_HistDocument ) THEN DO;
_ARBFMT_12 = PUT( genre_HistDocument , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.81272482014388 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.81272482014388 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 5.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 5.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 5.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 5.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
13.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 13.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF user_rating_count < 209 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 209 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 9.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
9.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 9.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 9.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.77350427350427 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.77350427350427 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
11.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.78461538461538 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.78461538461538 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 11.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.42163702135578;
END;
ELSE DO;
P_ss_std = 0.43852900965351;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 7 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
7 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.78888888888888 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.78888888888888 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 7 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 7 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.44095855184409;
END;
ELSE DO;
P_ss_std = 0.44721359549995;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.78650355169692 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.78650355169692 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 310 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 310 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 310 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 310 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.80095846645367 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.80095846645367 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_Fantasy ) THEN DO;
_ARBFMT_12 = PUT( genre_Fantasy , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_Sci_fi ) THEN DO;
_ARBFMT_12 = PUT( genre_Sci_fi , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.39881089891458;
END;
ELSE DO;
P_ss_std = 0.40852416748405;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.76488306165839 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.76488306165839 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF 303.5 <= ss_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_count < 303.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF 303.5 <= tomatometer_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF tomatometer_count < 303.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.43223674822005;
END;
ELSE DO;
P_ss_std = 0.42193431027685;
END;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.83356417359187 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.83356417359187 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 6.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 6.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 6.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 6.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(tomatometer_count ) AND
tomatometer_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(tomatometer_count ) AND
11.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 11.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF user_rating_count < 147 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 147 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 8.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
8.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.82575757575757 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.82575757575757 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 8.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 8.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.40451991747794;
END;
ELSE DO;
P_ss_std = 0.40824829046386;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.82369652406417 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.82369652406417 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF 14.5 <= ss_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_count < 14.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF 14.5 <= tomatometer_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF tomatometer_count < 14.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
P_ss_std = 0.38078973230368;
END;
ELSE DO;
P_ss_std = 0.38966557098659;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.85770528683914 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.85770528683914 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF 10.5 <= ss_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_count < 10.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF 10.5 <= tomatometer_count THEN DO;
_BRANCH_ = 1;
END;
ELSE IF tomatometer_count < 10.5 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 22.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
22.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 22.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 22.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.87479372937293 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.87479372937293 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.35258833666491;
END;
ELSE DO;
P_ss_std = 0.34141689134574;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
13.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 13.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_mean ) THEN DO;
IF 0.85671514114627 <= ss_mean THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_mean < 0.85671514114627 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.37704249666412;
END;
ELSE DO;
P_ss_std = 0.36477638299054;
END;
END;
END;
END;
END;
ELSE DO;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.09545454545454 THEN DO;
P_ss_std = 0.06030226891555;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.67006802721088 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.67006802721088 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_p25 ) THEN DO;
IF ss_p25 < 0.125 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.125 <= ss_p25 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_HistDocument ) THEN DO;
_ARBFMT_12 = PUT( genre_HistDocument , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 1;
IF _BRANCH_ EQ 2 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.71492063492063 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.71492063492063 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_p25 ) THEN DO;
IF ss_p25 < 0.125 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.125 <= ss_p25 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_count ) THEN DO;
IF ss_count < 7.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 7.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
13.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 13.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 13.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_p25 ) THEN DO;
IF 0.125 <= ss_p25 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF ss_p25 < 0.125 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 1;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.48508407092612;
END;
ELSE DO;
P_ss_std = 0.46658571793879;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
11.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 11.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.46416684486946;
END;
ELSE DO;
P_ss_std = 0.44680386648979;
END;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.28101503759398 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.28101503759398 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(ss_p75 ) THEN DO;
IF ss_p75 < 0.375 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 0.375 <= ss_p75 THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_mean ) AND
ss_mean < 0.19375 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_mean ) AND
0.19375 <= ss_mean THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_Action ) THEN DO;
_ARBFMT_12 = PUT( genre_Action , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(genre_Adventure ) THEN DO;
_ARBFMT_12 = PUT( genre_Adventure , BEST12.);
%DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
_BRANCH_ = 1;
END;
ELSE IF _ARBFMT_12 IN ('0' ) THEN DO;
_BRANCH_ = 2;
END;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.36247008113531;
END;
ELSE DO;
P_ss_std = 0.44821705464633;
END;
END;
ELSE DO;
_BRANCH_ = -1;
IF NOT MISSING(ss_count ) AND
ss_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF NOT MISSING(ss_count ) AND
11.5 <= ss_count THEN DO;
_BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(tomatometer_count ) THEN DO;
IF tomatometer_count < 11.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 11.5 <= tomatometer_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 AND NOT MISSING(user_rating_count ) THEN DO;
IF user_rating_count < 151.5 THEN DO;
_BRANCH_ = 1;
END;
ELSE IF 151.5 <= user_rating_count THEN DO;
_BRANCH_ = 2;
END;
ELSE _BRANCH_ = 2;
END;
IF _BRANCH_ LT 0 THEN _BRANCH_ = 2;
IF _BRANCH_ EQ 1 THEN DO;
P_ss_std = 0.52594456808168;
END;
ELSE DO;
P_ss_std = 0.49717866391057;
END;
END;
END;
END;
END;
END;
****************************************************************;
****** END OF DECISION TREE SCORING CODE ******;
****************************************************************;
*;
* ASSIGN VALUE TO: ss_std;
*;
IMP_ss_std = P_SS_STD;
END;
