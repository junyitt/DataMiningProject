label M_markets_missing = "Imputation Indicator for markets_missing";
if missing(markets_missing) then M_markets_missing = 1;
else M_markets_missing= 0;
