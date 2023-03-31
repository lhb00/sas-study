/* �������� 1 */
/* (1) Free(List) Input ���� �Է� */
data data1;
input sex $ type $ convienience safety freedom satisfaction;
cards;
�� ����Ʈ 9.1 9 8.7 9
�� ����Ʈ 8.5 8.8 8 8.5
�� ����Ʈ 9.2 8.7 8.3 8.6
�� ����Ʈ 8.3 8.9 8.4 8.4
�� ����Ʈ 7.2 8.4 8.2 8
�� ����Ʈ 8.5 7.9 7.2 7.8
�� ����Ʈ 8.7 8.7 8 8.4
�� ����Ʈ 8.4 8.3 7.5 8
�� �ܵ����� 8.3 7.2 8.8 8
�� �ܵ����� 8.5 6.8 8.3 7.3
�� �ܵ����� 7.2 7.9 8.7 7.9
�� �ܵ����� 8.1 8.3 8.5 8.2
�� �ܵ����� 7.8 8.4 9.1 8.3
�� �ܵ����� 8.8 7.6 8.2 8.2
�� �������� 7.2 8.2 8.1 7.7
�� �������� 7.4 8 7.9 7.5
�� �������� 7.8 7.8 7.8 7.8
�� �������� 8.1 8.6 8.4 8.5
�� �������� 8.3 8.1 7.6 8
;
run;
proc print;run;
/* (2) Column Input ���� �Է� */
data data2;
input sex $1-3 type $4-11 convienience 12-15 .1 safety 16-19 .1 freedom 20-23 .1 satisfaction 24-27 .1;
cards;
�� ����Ʈ   9.1 9.0 8.7 9.0
�� ����Ʈ   8.5 8.8 8.0 8.5
�� ����Ʈ  9.2 8.7 8.3 8.6
�� ����Ʈ   8.3 8.9 8.4 8.4
�� ����Ʈ  7.2 8.4 8.2 8.0
�� ����Ʈ  8.5 7.9 7.2 7.8
�� ����Ʈ  8.7 8.7 8.0 8.4
�� ����Ʈ  8.4 8.3 7.5 8.0
�� �ܵ����� 8.3 7.2 8.8 8.0
�� �ܵ����� 8.5 6.8 8.3 7.3
�� �ܵ����� 7.2 7.9 8.7 7.9
�� �ܵ����� 8.1 8.3 8.5 8.2
�� �ܵ����� 7.8 8.4 9.1 8.3
�� �ܵ����� 8.8 7.6 8.2 8.2
�� �������� 7.2 8.2 8.1 7.7
�� �������� 7.4 8.0 7.9 7.5
�� �������� 7.8 7.8 7.8 7.8
�� �������� 8.1 8.6 8.4 8.5
�� �������� 8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (3) Format Input ���� �Է� */
data data3;
input (sex type convienience safety freedom satisfaction) ($3. $9. 4*4.);
cards;
�� ����Ʈ   9.1 9.0 8.7 9.0
�� ����Ʈ   8.5 8.8 8.0 8.5
�� ����Ʈ   9.2 8.7 8.3 8.6
�� ����Ʈ   8.3 8.9 8.4 8.4
�� ����Ʈ   7.2 8.4 8.2 8.0
�� ����Ʈ   8.5 7.9 7.2 7.8
�� ����Ʈ   8.7 8.7 8.0 8.4
�� ����Ʈ   8.4 8.3 7.5 8.0
�� �ܵ����� 8.3 7.2 8.8 8.0
�� �ܵ����� 8.5 6.8 8.3 7.3
�� �ܵ����� 7.2 7.9 8.7 7.9
�� �ܵ����� 8.1 8.3 8.5 8.2
�� �ܵ����� 7.8 8.4 9.1 8.3
�� �ܵ����� 8.8 7.6 8.2 8.2
�� �������� 7.2 8.2 8.1 7.7
�� �������� 7.4 8.0 7.9 7.5
�� �������� 7.8 7.8 7.8 7.8
�� �������� 8.1 8.6 8.4 8.5
�� �������� 8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (4) ������ �� ���� ����ġ�� �Ǵ� ���� �Է� */
data data4;
input @3 sex $2. @5 type $8. #2 convenience 1-3 safety 5-7 freedom 9-11 satisfaction 13-15;
cards;
  �� ����Ʈ    
9.1 9.0 8.7 9.0
  �� ����Ʈ    
8.5 8.8 8.0 8.5
  �� ����Ʈ    
9.2 8.7 8.3 8.6
  �� ����Ʈ    
8.3 8.9 8.4 8.4
  �� ����Ʈ    
7.2 8.4 8.2 8.0
  �� ����Ʈ    
8.5 7.9 7.2 7.8
  �� ����Ʈ    
8.7 8.7 8.0 8.4
  �� ����Ʈ    
8.4 8.3 7.5 8.0
  �� �ܵ����� 
8.3 7.2 8.8 8.0
  �� �ܵ����� 
8.5 6.8 8.3 7.3
  �� �ܵ����� 
7.2 7.9 8.7 7.9
  �� �ܵ����� 
8.1 8.3 8.5 8.2
  �� �ܵ����� 
7.8 8.4 9.1 8.3
  �� �ܵ����� 
8.8 7.6 8.2 8.2
  �� ��������     
7.2 8.2 8.1 7.7
  �� ��������     
7.4 8.0 7.9 7.5
  �� ��������     
7.8 7.8 7.8 7.8
  �� ��������     
8.1 8.6 8.4 8.5
  �� ��������     
8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (5) �ڷᰡ ��� �̾��� ���� ��� ���� �Է� */
data data5;
input sex $ type $ convienience safety freedom satisfaction @@;
cards;
�� ����Ʈ    9.1 9.0 8.7 9.0 �� ����Ʈ    8.5 8.8 8.0 8.5 �� ����Ʈ    9.2 8.7 8.3 8.6 
�� ����Ʈ    8.3 8.9 8.4 8.4 �� ����Ʈ    7.2 8.4 8.2 8.0 �� ����Ʈ    8.5 7.9 7.2 7.8
�� ����Ʈ    8.7 8.7 8.0 8.4 �� ����Ʈ    8.4 8.3 7.5 8.0 �� �ܵ����� 8.3 7.2 8.8 8.0
�� �ܵ����� 8.5 6.8 8.3 7.3 �� �ܵ����� 7.2 7.9 8.7 7.9 �� �ܵ����� 8.1 8.3 8.5 8.2
�� �ܵ����� 7.8 8.4 9.1 8.3 �� �ܵ����� 8.8 7.6 8.2 8.2 �� ��������     7.2 8.2 8.1 7.7
�� ��������     7.4 8.0 7.9 7.5 �� ��������     7.8 7.8 7.8 7.8 �� ��������     8.1 8.6 8.4 8.5
�� ��������     8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* ������ �ѱ۷� ����� �����ϳ� �ſ� ���������Ƿ� ����� ������ �ۼ�����.*/
/* �������� 2 */
/* (1) ��¥ ������ ���� */
/* (2) ����� ���� ���� */
/* (3) ���賯¥, �����¥. ����� �μ�*/
data date1;
input exam date7. +1 result date7.;
duration = result - exam +1;
cards;
03May92 03May93
13Dec01 12Dec03
15Jan01 17Mar05
;
run;
proc print data=date1;
format exam result worddate12.;
run;
data date2;
input exam date9. +1 result date9.;
duration = result - exam +1;
cards;
03May1992 03May1993
13Dec2001 12Dec2003
15Jan2001 17Mar2005
;
run;
proc print data=date2;
format exam result worddate12.;
run;
data date3;
input exam date11. +1 result date11.;
duration = result - exam +1;
cards;
03-May-1992 03-May-1993
13-Dec-2001 12-Dec-2003
15-Jan-2001 17-Mar-2005
;
run;
proc print data=date3;
format exam result worddate12.;
run;
data date4;
input exam ddmmyy8. +1 result ddmmyy8. ;
duration = result - exam +1;
cards;
03-05-92 03-05-93
13-12-01 12-12-03
15-01-01 17-03-05
;
run;
proc print data=date4;
format exam result worddate12.;
run;
data date4;
input exam ddmmyy8. +1 result ddmmyy8. ;
duration = result - exam +1;
cards;
03-05-92 03-05-93
13-12-01 12-12-03
15-01-01 17-03-05
;
run;
proc print data=date4;
format exam result worddate12.;
run;
data date5;
input exam ddmmyy6. +1 result ddmmyy6. ;
duration = result - exam +1;
cards;
030592 030593
131201 121203
150101 170305
;
run;
proc print data=date5;
format exam result worddate12.;
run;
data date6;
input exam ddmmyy10. +1 result ddmmyy10. ;
duration = result - exam +1;
cards;
03-05-1992 03-05-1993
13-12-2001 12-12-2003
15-01-2001 17-03-2005
;
run;
proc print data=date6;
format exam result worddate12.;
run;
/* �������� 3 */
/* (1) �ְ� �����ͷ� ������ �� ���� */
/* 1) ��������, ���ǵ�, �������� ���Ե� ������ */
data residence;
input sex $1-3 type $4-12 convienience 13-16 .1 safety 17-20 .1 freedom 21-24 .1 satisfaction 25-27 .1;
cards;
�� ����Ʈ   9.1 9.0 8.7 9.0
�� ����Ʈ   8.5 8.8 8.0 8.5
�� ����Ʈ   9.2 8.7 8.3 8.6
�� ����Ʈ   8.3 8.9 8.4 8.4
�� ����Ʈ   7.2 8.4 8.2 8.0
�� ����Ʈ   8.5 7.9 7.2 7.8
�� ����Ʈ   8.7 8.7 8.0 8.4
�� ����Ʈ   8.4 8.3 7.5 8.0
�� �ܵ����� 8.3 7.2 8.8 8.0
�� �ܵ����� 8.5 6.8 8.3 7.3
�� �ܵ����� 7.2 7.9 8.7 7.9
�� �ܵ����� 8.1 8.3 8.5 8.2
�� �ܵ����� 7.8 8.4 9.1 8.3
�� �ܵ����� 8.8 7.6 8.2 8.2
�� �������� 7.2 8.2 8.1 7.7
�� �������� 7.4 8.0 7.9 7.5
�� �������� 7.8 7.8 7.8 7.8
�� �������� 8.1 8.6 8.4 8.5
�� �������� 8.3 8.1 7.6 8.0
;
data residence1;
set residence ( KEEP = type convienience freedom satisfaction);
run;
proc print; run;
/* 2) ���ǵ� 8.5 �̻����� ������ ������ */
data residence2;
set residence;
if convienience>=8.5;
run;
proc print; run;
/* 3) ����Ʈ�� �������� �����ϴ� �����Ϳ� �������ø��� ������ */
data residence3_1 residence3_2;
set residence;
if type='����Ʈ   ' | type='�������� ' then output residence3_1;
else output residence3_2;
run;
proc print data=residence3_1;
run;
proc print data=residence3_2;
run;
/* (2) �ְ� �����͸� text file�� ���� �� sas ������ ������ �о� ����*/
filename residencefile '\\Mac\Home\Desktop\exercise3_2.txt';
data datafile;
						infile 'exercise3_2.txt' encoding="utf-8";
						input sex $1-3 type $4-11 convienience 12-15 .1 safety 16-19 .1 freedom 20-23 .1 
											satisfaction 24-27 .1;
run;
proc print;
run;
/* �������� 4 */
/* (1) Excel ���Ϸ� ���� �� SAS�� �ҷ����� */
proc print data=exercise4;
run;
/* (2) ���� �������� �������Ϸ� ����*/
libname AAA '\\Mac\Home\Desktop\sas-study-main';
/* (3) ����� �������� �ҷ�����*/
data exercise4_3;
set AAA.exercise4_2;
proc print;
run;
