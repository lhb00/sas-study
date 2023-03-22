/* �������� 1 */
/* (1) Free(List) Input ���� �Է� */
data data1;
input sex $ type $ convienience safety freedom satisfaction;
cards;
F Apart 9.1 9 8.7 9
F Apart 8.5 8.8 8 8.5
M Apart 9.2 8.7 8.3 8.6
F Apart 8.3 8.9 8.4 8.4
M Apart 7.2 8.4 8.2 8
M Apart 8.5 7.9 7.2 7.8
M Apart 8.7 8.7 8 8.4
M Apart 8.4 8.3 7.5 8
M Detached 8.3 7.2 8.8 8
F Detached 8.5 6.8 8.3 7.3
F Detached 7.2 7.9 8.7 7.9
F Detached 8.1 8.3 8.5 8.2
M Detached 7.8 8.4 9.1 8.3
M Detached 8.8 7.6 8.2 8.2
F Town 7.2 8.2 8.1 7.7
M Town 7.4 8 7.9 7.5
F Town 7.8 7.8 7.8 7.8
M Town 8.1 8.6 8.4 8.5
M Town 8.3 8.1 7.6 8
;
run;
proc print;run;
/* (2) Column Input ���� �Է� */
data data2;
input sex $1-2 type $3-11 convienience 12-15 .1 safety 16-19 .1 freedom 20-23 .1 satisfaction 24-27 .1;
cards;
F Apart    9.1 9.0 8.7 9.0
F Apart    8.5 8.8 8.0 8.5
M Apart    9.2 8.7 8.3 8.6
F Apart    8.3 8.9 8.4 8.4
M Apart    7.2 8.4 8.2 8.0
M Apart    8.5 7.9 7.2 7.8
M Apart    8.7 8.7 8.0 8.4
M Apart    8.4 8.3 7.5 8.0
M Detached 8.3 7.2 8.8 8.0
F Detached 8.5 6.8 8.3 7.3
F Detached 7.2 7.9 8.7 7.9
F Detached 8.1 8.3 8.5 8.2
M Detached 7.8 8.4 9.1 8.3
M Detached 8.8 7.6 8.2 8.2
F Town     7.2 8.2 8.1 7.7
M Town     7.4 8.0 7.9 7.5
F Town     7.8 7.8 7.8 7.8
M Town     8.1 8.6 8.4 8.5
M Town     8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (3) Format Input ���� �Է� */
data data3;
input (sex type convienience safety freedom satisfaction) ($2. $8. 4*3.);
cards;
F Apart    9.1 9.0 8.7 9.0
F Apart    8.5 8.8 8.0 8.5
M Apart    9.2 8.7 8.3 8.6
F Apart    8.3 8.9 8.4 8.4
M Apart    7.2 8.4 8.2 8.0
M Apart    8.5 7.9 7.2 7.8
M Apart    8.7 8.7 8.0 8.4
M Apart    8.4 8.3 7.5 8.0
M Detached 8.3 7.2 8.8 8.0
F Detached 8.5 6.8 8.3 7.3
F Detached 7.2 7.9 8.7 7.9
F Detached 8.1 8.3 8.5 8.2
M Detached 7.8 8.4 9.1 8.3
M Detached 8.8 7.6 8.2 8.2
F Town     7.2 8.2 8.1 7.7
M Town     7.4 8.0 7.9 7.5
F Town     7.8 7.8 7.8 7.8
M Town     8.1 8.6 8.4 8.5
M Town     8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (4) ������ �� ���� ����ġ�� �Ǵ� ���� �Է� */
data data4;
input @3 sex $2. @5 type $8. #2 convenience 1-3 safety 5-7 freedom 9-11 satisfaction 13-15;
cards;
  F Apart    
9.1 9.0 8.7 9.0
  F Apart    
8.5 8.8 8.0 8.5
  M Apart    
9.2 8.7 8.3 8.6
  F Apart    
8.3 8.9 8.4 8.4
  M Apart    
7.2 8.4 8.2 8.0
  M Apart    
8.5 7.9 7.2 7.8
  M Apart    
8.7 8.7 8.0 8.4
  M Apart    
8.4 8.3 7.5 8.0
  M Detached 
8.3 7.2 8.8 8.0
  F Detached 
8.5 6.8 8.3 7.3
  F Detached 
7.2 7.9 8.7 7.9
  F Detached 
8.1 8.3 8.5 8.2
  M Detached 
7.8 8.4 9.1 8.3
  M Detached 
8.8 7.6 8.2 8.2
  F Town     
7.2 8.2 8.1 7.7
  M Town     
7.4 8.0 7.9 7.5
  F Town     
7.8 7.8 7.8 7.8
  M Town     
8.1 8.6 8.4 8.5
  M Town     
8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (5) �ڷᰡ ��� �̾��� ���� ��� ���� �Է� => �ڷᰡ ��� �̾��� ������ �ǹ̰� ��ȣ�ؼ�, ���� �� �ٽ� Ǯ�� �� ����*/
data data5;
cards;
F Apart    9.1 9.0 8.7 9.0
F Apart    8.5 8.8 8.0 8.5
M Apart    9.2 8.7 8.3 8.6
F Apart    8.3 8.9 8.4 8.4
M Apart    7.2 8.4 8.2 8.0
M Apart    8.5 7.9 7.2 7.8
M Apart    8.7 8.7 8.0 8.4
M Apart    8.4 8.3 7.5 8.0
M Detached 8.3 7.2 8.8 8.0
F Detached 8.5 6.8 8.3 7.3
F Detached 7.2 7.9 8.7 7.9
F Detached 8.1 8.3 8.5 8.2
M Detached 7.8 8.4 9.1 8.3
M Detached 8.8 7.6 8.2 8.2
F Town     7.2 8.2 8.1 7.7
M Town     7.4 8.0 7.9 7.5
F Town     7.8 7.8 7.8 7.8
M Town     8.1 8.6 8.4 8.5
M Town     8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* ������ �ѱ۷� ����� �����ϳ� �ſ� ���������Ƿ� ����� ������ �ۼ�����.*/
/* �������� 2 */
/* (1) ��¥ ������ ���� */
/* (2) ����� ���� ���� */
/* ���賯¥, �����¥. ����� �μ�*/
