/* output���� output���� �ִ� �ڸ����� ��� sas �����ͷ� ��ϵȴ�.*/
data out1;
do i=1 to 3;
k = i + 10;
end; /* end�� ������ ������ ��ȯ�ǹǷ� 4�� 13�� ��µȴ�.*/
run;
proc print;run;

data out2;
do i = 1 to 3;
output;
k = i + 10; /* ù output���� ����� �� k�� ���ǵ��� �ʾ����Ƿ� ù ��° k�� ����ġ��.*/
end;
run;
proc print;run;

data out3;
do i = 1 to 3;
k = i + 10;
output;
end;
run;
proc print;run;

DATA random ( DROP=k); /* */
DO k = 1 TO 10;
x=uniform(0) ; PUT x; /* �α�â���� 10���� �� ��µ����� �翬�� ��� â���� ������ 1���� ��µȴ�.*/
END;
RUN;
PROC PRINT; RUN;

DATA random1 (DROP=k);
DO k = 1 TO 10;
x = uniform(0);
OUTPUT; /* output���� ���ؼ� 10�� ��θ� sas �����Ϳ� ��������� �Ѵ�.*/
END;
RUN;
PROC PRINT; RUN;

data males females;
set examd;
if sex = 'M' then output males; /* 2�� �̻��� output�� �ִٸ� if-else�� select�� ��� �����Ϳ� output ���� ������ �ݵ�� ���� �ʿ�*/
else output females;
run;

