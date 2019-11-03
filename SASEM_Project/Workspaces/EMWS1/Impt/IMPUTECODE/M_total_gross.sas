label M_total_gross = "Imputation Indicator for total_gross";
if missing(total_gross) then M_total_gross = 1;
else M_total_gross= 0;
