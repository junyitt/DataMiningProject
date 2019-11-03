/* Fimport.source */
%macro main;
      %if %upcase(&EM_ACTION) = CREATE %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_create.source';
         %include temp;
         filename temp;
         %create;
      %end;
      %else
      %if %upcase(&EM_ACTION) = TRAIN %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_train.source';
         %include temp;
         filename temp;
         %train;
      %end;
      %else
      %if %upcase(&EM_ACTION) = UPDATE %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_update.source';
         %include temp;
         filename temp;
         %update;
      %end;
      %else
      %if %upcase(&EM_ACTION) = PROPERTY %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_actions.source';
         %include temp;
         filename temp;
         %property;
      %end;
       %else
      %if %upcase(&EM_ACTION) = SCORE %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_score.source';
         %include temp;
         filename temp;
         %score;
      %end;
      %else
      %if %upcase(&EM_ACTION) = REPORT %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_report.source';
         %include temp;
         filename temp;
         %report;
      %end;
      %else
      %if %upcase(&EM_ACTION) = OPENVARIABLESET %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_actions.source';
         %include temp;
         filename temp;
         %openvariableset;
      %end;
      %else
      %if %upcase(&EM_ACTION) = CLOSEVARIABLESET %then %do;
         filename temp catalog 'sashelp.emsamp.Fimport_actions.source';
         %include temp;
         filename temp;
         %closevariableset;
      %end;
%mend main;
%main;
