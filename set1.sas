/* sas���� �����͸� �����ϴ� ���
1. input��
2. set��
set���� ����ϸ� input�̳� cards �ʿ� ���� ������ ������ �����ϴ�. 
set�� ����� 2���� �ִµ�, ������ �ϳ��� ��� ���̴�. �װ��� ������ ������� �����͸� �ҷ����� ���̴�. �ٸ� �ϳ��� ���� ���� �����͸� ��ġ�� ���̴�. ������ �ϴ� ��ɹ��� �� ���� �ִµ�, ���߿� ������ ����.*/
data examd;
input id 1-2 sex $ 3 age 4-5 edu 6 dept 7 sat 8 wage
      9-15 wkhr 16-19 .1;
cards;
01M29112 3990001429
02F20111 4590002080
03M22221 3680001500
04F30222 4200019232
05F33121 4700021821
;
run;
proc print;run;
DATA one;
SET examd ( KEEP = ID SEX AGE WAGE) ;
RUN;
proc print;run;
DATA two;
SET examd ( drop = ID SEX AGE WKHR);
RUN;
proc print;run;
data three;
set examd ( keep=id dept sat wage wkhr);
hout=wage/wkhr;
run;
proc print;run;
data four (keep=id dept sat wage wkhr); /* �� ������θ� �����͸� �����ϰڴٰ� �����ϴ� ��*/
set examd;
hout=wage/wkhr; /* hout ������ ��Ÿ���� ����.*/
run;
proc print; run;
data five (keep=id dept sat wage wkhr hout);
set examd;
hout=wage/wkhr;
run;
proc print; run;
