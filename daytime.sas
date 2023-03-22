Data year;
input dt1 date7. @9 dt2 mmddyy10. @20 dt3 ddmmyy8. @29 dt4 yymmdd10.;
/* �̿� ���� format�� �����������.*/
put dt1-dt4; /* put: �α�â�� write�϶�� �ǹ�*/
cards;
02Jan00 01-02-2000 02/01/00 2000/01/02
;run;
options yearcutoff=1920; /* options ������ �ش��ϴ� Ű����� ����� ����. page size ���... �ʹ� ���� ������ �׶� �׶� �����ϴ� ���� ����.*/
/* yearcutoff�� �پ��� ��Ģ�� �����µ�, �翬�� �� �ڸ� ���ڷ� ������ �ԷµǾ��� ���� ����ȴ�. 4�ڸ� ������ ���� ������� �ʴ´�.*/
/* 100�� ���� �ȿ� �ִ� ���ڸ� �� �ڸ� ���ڷ� ������ �����ϸ�, �� ���� ���� ���ڸ� �����ϰ� �ʹٸ� �� �ڸ��� �Է����־�߸� �Ѵ�.*/
data bills;
input lastname $8. @10 datein mmddyy8. +1 dateout mmddyy8. +1 roomrate 6. @35
equipcost 6.;
days=dateout-datein+1;
roomcharge=days*roomrate;
total=roomcharge+equipcost;
cards;
Akron    04/05/99 04/09/99 175.00 298.45
Brown   04/12/99 05/01/99 125.00 326.78
;
run;
proc print; run;
/* ���� X �� ������ �ִ� �Ӽ� �״�� ����Ʈ�Ѵ�.*/


proc print data=bills;
format datein dateout worddate12.; /* worddate12.Ű����� 12�ڸ� ��¥ ���� ���� ���� roomrate�� ���� ���� �����̳�, ���ڴ� ��� ��¥�� ������ ��ȯ �����ϹǷ� ��¥ �������� ��� �����ϴ�.*/
run;
