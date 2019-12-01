*------------------------------------------------------------*;
* Clus: Training;
*------------------------------------------------------------*;
*------------------------------------------------------------* ;
* Clus: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    G(ASC) IMP_markets_missing(ASC) NC17(ASC) NR(ASC) PG(ASC) PG_13(ASC) R(ASC)
   genre_Action(ASC) genre_Adventure(ASC) genre_AnimationManga(ASC)
   genre_ArthouseInter(ASC) genre_ClassicsCult(ASC) genre_Comedy(ASC)
   genre_DramaTele(ASC) genre_FamilyKids(ASC) genre_Fantasy(ASC)
   genre_FitnessSports(ASC) genre_HistDocument(ASC) genre_Horror(ASC)
   genre_MusicalPerfarts(ASC) genre_Romance(ASC) genre_Sci_fi(ASC)
   genre_Special_Interest(ASC) genre_ThrillMysSusp(ASC) genre_Western(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Clus: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    IMP_domestic_gross IMP_domestic_opening IMP_foreign_gross IMP_runtime
   IMP_ss_count IMP_ss_mean IMP_ss_median IMP_ss_p25 IMP_ss_p75 IMP_ss_std
   IMP_total_gross IMP_user_rating_count tomatometer_count
%mend DMDBVar;
*------------------------------------------------------------*;
* Clus: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=EMWS1.Impt_TRAIN
dmdbcat=WORK.Clus_DMDB
maxlevel = 513
out=WORK.Clus_DMDB
;
class %DMDBClass;
var %DMDBVar;
run;
quit;
*------------------------------------------------------------* ;
* Clus: Interval Inputs Macro ;
*------------------------------------------------------------* ;
%macro DMVQINTERVAL;
    IMP_domestic_gross IMP_domestic_opening IMP_foreign_gross IMP_runtime
   IMP_ss_count IMP_ss_mean IMP_ss_median IMP_ss_p25 IMP_ss_p75 IMP_ss_std
   IMP_total_gross IMP_user_rating_count tomatometer_count
%mend DMVQINTERVAL;
*------------------------------------------------------------* ;
* Clus: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro DMVQNOMINAL;
    G IMP_markets_missing NC17 NR PG PG_13 R genre_Action genre_Adventure
   genre_AnimationManga genre_ArthouseInter genre_ClassicsCult genre_Comedy
   genre_DramaTele genre_FamilyKids genre_Fantasy genre_FitnessSports
   genre_HistDocument genre_Horror genre_MusicalPerfarts genre_Romance
   genre_Sci_fi genre_Special_Interest genre_ThrillMysSusp genre_Western
%mend DMVQNOMINAL;
*------------------------------------------------------------*;
* Clus: Run DMVQ procedure;
*------------------------------------------------------------*;
title;
options nodate;
proc dmvq data=WORK.Clus_DMDB dmdbcat=WORK.Clus_DMDB std=STD nominal=GLM ordinal=RANK
;
input %DMVQINTERVAL / level=interval;
input %DMVQNOMINAL / level=nominal;
VQ maxc = 2 clusname=_SEGMENT_ CLUSLABEL="Segment Id" DISTLABEL="Distance";
MAKE outvar=EMWS1.Clus_OUTVAR;
INITIAL radius=0
;
TRAIN tech=FORGY
;
SAVE outstat=EMWS1.Clus_OUTSTAT outmean=EMWS1.Clus_OUTMEAN;
code file="C:\Users\jy\Desktop\DataMiningProject\SASEM_Project\Workspaces\EMWS1\Clus\DMVQSCORECODE.sas"
group=Clus
;
run;
quit;
*------------------------------------------------------------* ;
* Clus: DMVQ Variables;
*------------------------------------------------------------* ;
%macro dmvqvars;
    IMP_domestic_gross IMP_domestic_opening IMP_foreign_gross IMP_runtime
   IMP_ss_count IMP_ss_mean IMP_ss_median IMP_ss_p25 IMP_ss_p75 IMP_ss_std
   IMP_total_gross IMP_user_rating_count tomatometer_count G0 G1
   IMP_markets_missing0 IMP_markets_missing1 NR0 NR1 PG0 PG1 PG_130 PG_131 R0 R1
   genre_Action0 genre_Action1 genre_Adventure0 genre_Adventure1
   genre_AnimationManga0 genre_AnimationManga1 genre_ArthouseInter0
   genre_ArthouseInter1 genre_ClassicsCult0 genre_ClassicsCult1 genre_Comedy0
   genre_Comedy1 genre_DramaTele0 genre_DramaTele1 genre_FamilyKids0
   genre_FamilyKids1 genre_Fantasy0 genre_Fantasy1 genre_FitnessSports0
   genre_FitnessSports1 genre_HistDocument0 genre_HistDocument1 genre_Horror0
   genre_Horror1 genre_MusicalPerfarts0 genre_MusicalPerfarts1 genre_Romance0
   genre_Romance1 genre_Sci_fi0 genre_Sci_fi1 genre_Special_Interest0
   genre_Special_Interest1 genre_ThrillMysSusp0 genre_ThrillMysSusp1
   genre_Western0 genre_Western1
%mend ;
