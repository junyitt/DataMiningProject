*;
* Drop prediction variables since they are for INPUTS not TARGETS;
* Replace _NODE_ by _XODE_ so it can be safely dropped;
*;
drop
P_domestic_gross
P_domestic_opening
P_foreign_gross
P_markets_missing1
P_markets_missing0
I_markets_missing
U_markets_missing
Q_markets_missing1
Q_markets_missing0
P_runtime
P_ss_count
P_ss_mean
P_ss_median
P_ss_p25
P_ss_p75
P_ss_std
P_total_gross
P_user_rating_count
;
