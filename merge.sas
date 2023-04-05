/* set���� merge���� ����� �׻� ������ ���� �ƴϴ�.*/
DATA owner;
input name $;
cards;
Nancy
Mary
Bill
; run;
DATA car;
input year $ make $ model $;
cards;
1989 Daewoo Lemans
2000 Kia Capital
1985 Hyundai Presto
; RUN;
DATA color;
input color$;
cards;
Silver
Purple
White
Red
; RUN;
DATA driver1;
merge owner car color; /* merge���� set���� �ٸ��� ������ set���� ������� �ʿ䰡 ����.*/
/* set���� �������� ������ ���� ���� �������� �����Ǿ����� merge���� �������� ������ ū ���� �������� �����ȴ�.*/
/* �ݸ� ���뺯���� ��� set���� �����ϰ� �ڿ� �ִ� �����͸� �������� �����ȴ�.*/
run;
proc print; run;

DATA driver0; /* set���� ��*/
set owner; set car; set color;run;
proc print;run;
data car1;
input name $ year make $ model $;
cards;
Nancy 1989 Daewoo Lemans
Mary 2000 Kia Capital
Bill 1985 Hyundai Presto
; run;
data color1;
input name $ color $;
cards;
Mary Purple
Nancy Silver
Ann Grey
Bill White
; run;

proc sort data =car1; /* ���������� �̸� sort�ϰ� �����ؾ��Ѵ�. �׷��� ������ ������ �߻��Ѵ�.*/
			by name; run; /* name ������ �������� ������ �����Ϳ� ���� ����*/
proc sort data =color1;
			by name; run;
data driver2;
			merge car1 color1;
			by name;
			run;
proc print; run;
