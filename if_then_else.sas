data exd;
input sex $ course $;
cards;
F stat1111
M stat1111
F stat2113
F stat3214
M stat3214
run;
DATA exd1;
	SET exd;
	IF SEX = 'M'; /* ���ǹ��� ����. ���� ���� �����͸� �ҷ���*/
RUN;
PROC PRINT;
RUN;

DATA exd2;
		SET exd;
		IF SEX = 'M' THEN SEX = 'Male'; /* set������ ��ü �����͸� �ҷ��� �� Ư�� ���� ���� �� ��ɹ� ����*/
RUN;
PROC PRINT;
RUN;

DATA exd3;
		SET exd;
		IF SEX = 'M' THEN SEX = 'Male';
						ELSE SEX = 'Female'; /* ���� ������ 1�� ��ɹ� ����, �ƴϸ� 2�� ��ɹ� ����*/ /* else�� �տ� if���� ������ �翬�� �� �� ������ �߻��ϰ� �ȴ�.*/
RUN;
PROC PRINT;
RUN;

DATA exd4;
set exd;
if SEX = 'M' and course= 'stat1111' then sex= "Male"; /* ���ǽ� 2���� and�� �����ϱ�*/
RUN;
proc print;
run;

DATA exd5;
set exd;
IF SEX = 'M' then if course = 'stat1111' then sex="Male1";
														else sex="Male2"; /* else���� ���� ������ �ִ� if���� ����ȴ�.*/
				else if  course = 'stat1111' then sex="Female1"; /* ���ǽ� ���� ���ǽ�*/
														  else sex="Female2";
RUN;
proc print;
run;
