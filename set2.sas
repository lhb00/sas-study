/* set�� ex. �����Ͱ� ���� 1/2�г� �����͸� �����ϴ� ���̶�� �Ѵٸ�, ���Ϸ� �����ؾ��Ѵ�. ���� �¿���� ���� ����*/
/* */
data a1;
input name $ sex $;
cards;
Sung M
Park F
Kim M
Lee F
;
run;
data a2;
input name $ sex $;
cards;
Moon F
Yoon M
Oh M
Jang F
;
run;
data a3;
input name $ age;
cards;
Sung 33
Park 23
Kim 12
Lee 45
;
run;
data a4;
input name $ sex $ age;
cards;
Sung F 33
Park M 23
Lee F 45
;
run;
DATA d; SET a1 a2; RUN; /* set�� ������ 2�� �Ҵ�: �����͸� 2�� �ҷ��´�.(X) ������ 2���� �����Ѵ�.(O)*/
/* �� set�� 2�� �Ἥ ������ �����͸� �Ҵ��ϴ� �Ͱ� �ϳ��� set�� 2���� �����͸� �Ҵ��ϴ� ���� ����� ������ �ٸ��� ����!*/
PROC PRINT; RUN;

DATA e; SET a2 a3; RUN;
PROC PRINT; RUN;

DATA f; SET a1 a4; RUN;
PROC PRINT; RUN;

data aa1; set a1;run;
data aa2;set a2;run;

proc sort data=aa1; by name; run; /* name ������ ����(���ĺ� ����)���� �з� �� ����*/
PROC PRINT; RUN;
proc sort data=aa2; by name; run;
PROC PRINT; RUN;
/* ���� �� ������ �ϴ� ���� �ƴϰ�, ������ ���� �� �� �����ϴ� ���̴�. ���� ���� �����ϸ� ���� �߻�!*/
DATA ff;
SET aa1 aa2;
by name;
RUN;
PROC PRINT; RUN;
DATA g; SET a1; SET a3; RUN; /* ���� ���սÿ��� ������ set ������ ������־�� �Ѵ�.*/
/* �ڿ� ���� ����� �ִٸ� �ڿ� �ִ� ���� �ڸ��� �����ϰ� �ȴ�.*/
PROC PRINT; RUN;
DATA g1; SET a3; SET a1; RUN; /* ���� a3�� ȣ��Ǵ� �ٸ� ����� ��µȴ�.*/
PROC PRINT;RUN;
DATA h; SET a1; SET a4; RUN; /* ��, ������ ������ ���� ���� ����� �������� �ȴ�.*/
PROC PRINT; RUN;
DATA h1; SET a4; SET a1; RUN;
PROC PRINT;RUN;
