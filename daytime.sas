Data year;
input dt1 date7. @9 dt2 mmddyy10. @20 dt3 ddmmyy8. @29 dt4 yymmdd10.;
/* �̿� ���� format�� �����������.*/
put dt1-dt4; /* put: �α�â�� write�϶�� �ǹ�*/
cards;
02Jan00 01-02-2000 02/01/00 2000/01/02
;run;
