data males;
input sex $ course $;
if sex = "F" then delete; /* delete: ������ �����ϴ� �����͸� writing���� �ʰ� skip�ϴ� ��ɾ�*/
/* delete���� �ش��ϴ� �����͸� skip�� ������ data step�� �ߴ� ��Ű�� ���� �ƴϴ�.*/
cards;
F stat1111
M stat1111
F stat2113
F stat3214
M stat3214
;
run;
proc print;run;

/* �ݸ� abort�� stop�� data step�� �ߴ��ϰ� �ƿ� �������´ٴ� �������� �ִ�.*/
data division;
input x y;
if y = 0 then abort; /* abort���� ��� �� ������ �߻��ϱ� ������ �����ϰ� proc step�� �����Ѵ�.*/
/* ���α׷��� ������Ʈ �Ǹ� abort���� ������ ���� �ʾ� ������ �߻��Ѵ�. �ֽ� ������ �����Ǿ����� � ������ ��������� �𸣴� ���̹Ƿ� stop���� �������..*/
z = x/y;
cards;
1 2
2 0
2 1
;
run;
proc print; run;

data division;
input x y;
if y = 0 then stop; /* ���� ���� ��Ȳ������ stop���� ����ϴ� ���� �����ϴ�.*/
/* stop���� data screening�� �� ����*/
z = x/y;
cards;
1 2
2 0
2 1
;
run;
proc print;run;
