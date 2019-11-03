label M_user_rating_count = "Imputation Indicator for user_rating_count";
if missing(user_rating_count) then M_user_rating_count = 1;
else M_user_rating_count= 0;
