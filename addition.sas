/* �ջ� ��ɾ�*/

/* Original data*/
DATA division;
INPUT X Y @@;
CARDS;
1 2 2 0 2 1
;
RUN;
PROC PRINT;RUN;

data division1; set division;
x+2; /* x=x+2*/
run;
PROC PRINT;RUN;

data division2; set division;
x+y; /* x=x+y*/
run;
PROC PRINT;RUN;

data division3;set division;
x+(-y); /* x = x-y */ /* ���̳ʽ� ��ȣ ��� �� ��ȣ ��� �ʼ�*/
run;
PROC PRINT;RUN;

data division4; set division;
x-y /* �۵� X, �ٸ� ���� �߻��� ����*/
run;
PROC PRINT;RUN;

data division5;set division;
x=x-y; /* �̷��� �ۼ��ϸ� ����*/
run;
PROC PRINT;RUN;
