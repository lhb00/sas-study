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
/* �������� 5 */
/* (1) a1�� a2�� �����Ͽ� a3 ����*/
data a1;
input name $ sex $;
cards;
��ȫ�� M
������ F
���ؿ� M
������ F
;
data a2;
input name $ sex $;
cards;
�̼��� F
����ȣ M
������ M
���ΰ� F
������ F
;
data a3; set a1 a2; run;
proc print;run;
data b1;
input name $;
cards;
������
�º���
����â
;
run;
data b2;
input year made $ cname $;
cards;
1998 ��� ������
1996 �ֿ� ����
1992 ��� ���ۻ��
;
data b3;set b1; set b2; run;
proc print;run;
/* (2) b1�� b2�� �����Ͽ� b3 ����*/
data b3;
merge b1 b2; run;
proc print;run;
/* (3) c1�� c2�� �����Ͽ� c3 ����*/
data c1;
input name $ year made $ cname $;
cards;
�º��� 1996 �ֿ� ����
������ 1992 ���� �ҳ�Ÿ
������ 1998 ��� ������
����â 1992 ��� ���ۻ��
;
data c2;
input name $  color $;
cards;
�º��� û��
������ ȸ��
����â ���
������ ���
�̸��� ȫ��
������ ���
;
proc sort data = c1;
by name; run;
proc sort data = c2;
by name; run;
data c3;
		merge c1 c2;
		by name;
		run;
proc print;run;
/* �������� 6*/
/* (1) 1���� 100������ �� ��� */
data exercise6_1;
sum1=0;
do i1=1 to 100;
sum1= sum1 +  i1;
end;
put sum1=;
run;
/* (2) 1���� 1000���� 5�� ����� �� ��� */
data exercise6_2;
sum2=0;
do i2=0 to 1000 by 5;
sum2 = sum2 + i2;
end;
put sum2=;
run;
/* (3) �ڿ����� 1���� ���ʷ� ���Ͽ� 10000�� �ѱ� ������ �� ��� */
/* (1) do_while��*/
data exercise6_3_1;
sum3_1=0;
do i3_1=1 to 10000 while (sum3_1<=10000);
sum3_1=sum3_1+i3_1;
end;
sum3_1=sum3_1-i3_1+1;
put sum3_1=;
run;
/* 2) do_until��*/
data exercise6_3_2;
sum3_2=0;
do i3_2=0 until (sum3_2>10000);
sum3_2=sum3_2+i3_2;
end;
sum3_2=sum3_2-i3_2+1;
put sum3_2=;
run;
/* (4) 5���� �����Ͽ� 5�� ����� 3�� ���� �� ���(5�� ����)*/
data exercise6_4;
sum4=0;
do i4=1 to 3;
sum4 = sum4 + i4 *5;
end;
put sum4;
run;
/* �������� 7 */
