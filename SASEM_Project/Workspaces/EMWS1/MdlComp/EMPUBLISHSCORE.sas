drop _temp_;
if (P_audience_score_positiveTrue ge 0.86116700201207) then do;
_temp_ = dmran(1234);
b_audience_score_positive = floor(1 + 4*_temp_);
end;
else
if (P_audience_score_positiveTrue ge 0.73972602739726) then do;
b_audience_score_positive = 5;
end;
else
if (P_audience_score_positiveTrue ge 0.61168384879725) then do;
_temp_ = dmran(1234);
b_audience_score_positive = floor(6 + 2*_temp_);
end;
else
if (P_audience_score_positiveTrue ge 0.6025641025641) then do;
b_audience_score_positive = 8;
end;
else
if (P_audience_score_positiveTrue ge 0.44805194805194) then do;
b_audience_score_positive = 9;
end;
else
if (P_audience_score_positiveTrue ge 0.36363636363636) then do;
_temp_ = dmran(1234);
b_audience_score_positive = floor(10 + 3*_temp_);
end;
else
do;
_temp_ = dmran(1234);
b_audience_score_positive = floor(13 + 8*_temp_);
end;
