/* if���� 2�� �̻��� ������ �ٷ���� ��ø�ؼ� �ؾ��Ѵ�. �ݸ� select���� ����ϸ� �ٷ� �� �ִ� ������ ������ ����.(�������� 8�� ����, ���� ���� X) */
/* select���� ǥ�� ��Ŀ��� 2������ �ִµ�, ȥ���Ͽ� 2���� ����� �ϳ��� ȥ���ؼ� ����ϴ� ��� ������ �߻��ϴ�, �ϳ��� ���忡�� �ϳ��� ��ĸ� �������.*/
data exd;
input id 1-2 sex $ 3 age 4-5 edi 6 dept 7 sat 8 wage
      9-15 wkhr 16-19 .1;
cards;
01M29112 3990001429
02F20121 4590002080
03M34231 3400001822
;
run;
/* select������ do���� ���������� end�� �־�, select���� ������ �������־�� �Ѵ�.*/
data exd1;
set exd;
select(dept); /* select(������ ������ �� ����)�� ���� ���·� �ۼ��Ѵ�.*/
when (1) new = wage - wkhr; /* when(������ ������ �� ������ �ش��ϴ� ��)�� ���� ���·� �ۼ��Ѵ�. �� when(dept=1)�� ���� �ǹ�*/
when (2) new = wage / wkhr;
otherwise new = wage * wkhr;
end;
run;
proc print;
run;
/* ��������: (1) end���� �ݵ�� �־���Ѵ�. (2) end���� ������ ��ġ�� �־���Ѵ�.*/
data exd2;
	set exd;
	select (dept);
					when (1) do;
											select (edu);
													when (1) new = wage ** 3;
													when (2) new = wage ** 2;
													otherwise;
											end; /* select�� do ������ �ش��ϴ� end���� �̸� �����صδ� �ڵ� ����� ���� ������ ������ �ȴ�.*/
									end;
					when (2) new = wage ** 4;
					otherwise; /* otherwise�� ��� new ���� X*/
	end;
run;
proc print;
run;

data exd3;
			set exd;
			select;
					when (dept=1) do;
												select;
														when (edu=1) new = wage ** 3; /* �̰��� select���� 2��° ����̴�.*/
														when (edu=2) new = wage ** 2; /* ȥ������ ����� ���� �ϳ��� select�������� �����, �ϳ��� �����Ϳ��� ��� select���� ������ ������� ����� �ʿ�� ����.*/
														otherwise;
												end;
					when (dept=2) new = wage ** 4;
			end;
run;
proc print;
run;

data season;
input mon$ TEMP @@;
cards;
JAN 0 FEB 10 MAR 35 APR 55 MAY 65 JUN 72
JUL 78 AUG 68 SEP 55 OCT 50 NOV 35 DEC 10
;
RUN;

DATA season1;
set season;
select;
		when (mon in ('JUN', 'JUL', 'AUG') and temp>70) put 'SUMMER ' mon=; /* in Ű���带 �̿��Ͽ� select���� ���������� ���� ���� �� �ִ�.*/
		when (mon in ('MAR', 'APR', 'MAY')) put 'SPRING ' mon=;
		otherwise put 'FALL OR WINTER ' mon=;
end;
run;
