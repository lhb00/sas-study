/* by���� ���غ����� �־ ���غ����� �����ϴ� ����*/
/* by���� ���ؼ� �Ϲ�������*/

data a1;
input name $ sex $;
cards;
Sung	M
Park		F
Kim		M
Lee 		F
;
run;

data aa1;set a1;run;
proc sort data=aa1; by sex; run; /* sex�� �������θ� �������� ���ĵȴ�.*/
proc print;run;

data aa2;set a1; run;
proc sort data=aa2; by sex name; run; /* name ������ ���ؼ��� �������� ������ �Ϸ��� by�� �ڿ� name�� �� �����־�� �Ѵ�.*/
proc print;run;

data aa3;set a1; run;
proc sort data=aa3; by descending sex name; run; /* descending�� �� ���� ������, �� �ٷ� �ڿ� �ִ� �������� ����ȴ�. ��� ������ �����Ϸ��� ������ descending�� �����ִ� ���� �ʿ��ϴ�.*/
proc print;run;

data aa4;set a1;run;
proc sort data=aa4; by descending sex descending name; run; /* name ������ ���ؼ��� �������� ���ĵȴ�.*/
proc print;run;
