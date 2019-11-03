label M_foreign_gross = "Imputation Indicator for foreign_gross";
if missing(foreign_gross) then M_foreign_gross = 1;
else M_foreign_gross= 0;
