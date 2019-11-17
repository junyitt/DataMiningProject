if upcase(NAME) = "G" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_ACTION" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_ADVENTURE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_ANIMATIONMANGA" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_ARTHOUSEINTER" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_CLASSICSCULT" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_COMEDY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_DRAMATELE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_FAMILYKIDS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_FANTASY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_FITNESSSPORTS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_HORROR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_MUSICALPERFARTS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_ROMANCE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_SCI_FI" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_SPECIAL_INTEREST" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_THRILLMYSSUSP" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "GENRE_WESTERN" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_DOMESTIC_OPENING" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_FOREIGN_GROSS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_MARKETS_MISSING" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_RUNTIME" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_SS_COUNT" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_SS_MEDIAN" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_SS_P25" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_SS_P75" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "IMP_TOTAL_GROSS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NC17" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PG" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PG_13" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_AUDIENCE_SCORE_POSITIVEFALSE" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_AUDIENCE_SCORE_POSITIVETRUE" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "R" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TOMATOMETER_COUNT" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
