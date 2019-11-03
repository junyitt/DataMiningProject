label M_domestic_gross = "Imputation Indicator for domestic_gross";
if missing(domestic_gross) then M_domestic_gross = 1;
else M_domestic_gross= 0;
