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
DATA males;
SET examd;
IF SEX = 'M'; /* SEX ������ M�� �����͸� �����Ͷ�*/
/* �� IF���� �־ ������ ������ �� �ִ� ���� �̷��� SET���� ������ ���� ����̴�.*/
/* �ٸ� ���� ������ �� ���̴�.*/
RUN;
proc print;
run;
DATA females;
SET examd;
IF SEX = 'F';
RUN;
proc print;
run;
DATA males1 females1;
/* �����Ϳ��� ���Ǹ� ��Ȯ�ϰ� ���� ������ if ������ �翬�� ������ ����ų ���̹Ƿ� ��Ȯ�ϰ� �����ؾ� �Ѵ�.*/
SET examd;
IF SEX = 'M' THEN OUTPUT males1; /* OUTPUT: SAS ������ ���� �����ض�.=>  males1�� ������ �����ϴ� ���̽��� writing�ض�=��Ͻ��Ѷ�*/
ELSE OUTPUT females1; /* �� �� ���̽���  females1�� writing(���)�ض�.*/
run;
proc print data=males1;
run;
proc print data=females1;
run;
/* ���� �����ʹ� �ٸ��� ���° �����͸� �ҷ��������� ������ �� ������.*/
data rowpick;
set examd (keep=id sex) point=3; /* point: ������� ������� ��, �ش� ���ڿ� �ش��ϴ� �����͸� �ҷ��´�.��*/
/* ���� �߻�: point �ڸ����� ���������� ���ڰ� ���� �ȵǰ�, ������ Ư�� �̸��� ���� ������� �;��Ѵ�.*/
run;
data rowpick; /* �����ϸ� SAS ���α׷� ����� �ؾ���.*/
obsn=3; /* ���� ���̽��� ���� ������ ������� ������, �̷��� �ϴ� ��� 3�� �ش��ϴ� ���̽��� ����ؼ� �ݺ��ع����� ������ �߻��Ѵ�. �׷��� �����ϸ� �ȵȴ�.*/
set examd (keep=id sex) point=obsn;
run;
data rowpick;
obsn=3;
set examd (keep=id sex) point=obsn;
stop; /* stop: 3�� ���̽��� ���� ���� �����ϰ� �� ���� �ܰ�� �Ѿ �� �ְ� �Ѵ�.*/
/* ���̽��� ��ó �о���̱� ���� ��ɹ��� ������� �������� ������ ������ ���̴�.*/
run;
proc print;
run;
data rowpick;
obsn=3;
set examd (keep=id sex) point=obsn; /* ��ɹ��� ����� ���� �����͸� ����Ͽ� ���� ������ �����Ѵ�.*/
output;
stop; run;
proc print; run;
