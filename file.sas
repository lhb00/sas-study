/* file���� infile���� �ݴ�� �����͸� �ܺο� txt ���Ϸ� ����� ���̴�. */
/* file���� Ȱ��, put���� default ��� ��ġ�� �α�â�ε�, �̸� ������ �� �ִ�.*/
DATA aaa1;
file 'out.txt' PRINT;
DO I = 1 TO 10;
II = I * I;
PUT I II;
END; /* �ݺ���, end�� ������ ���� �ݺ��Ͽ� 10���� ����ȴ�.*/
RUN;
filename abc 'C:\Users\USER\Desktop\out.txt';
DATA aaa2;
FILE abc PRINT; /* infile���� ���������� filename ���� file������ �ٷ� ��θ� �ۼ��ص� �ȴ�.(�ֽ� ����)*/
DO I = 1 TO 10;
II = I * I;
PUT I II;
END;
RUN;
data aaa3;
do i=1 to 10;
ii=i*i;
put i ii;
end;
run;
data aaa4;
file print; /* file print: �α�â�� ����ϴ� ���� ���â�� ����ϵ��� �����.*/
do i=1 to 10;
ii=i*i;
put i ii;
end;
run;
data aaa5;
file print;
do i=1 to 10;
ii=i*i;
put i ii;
end;
file log; /* file print�� ��� ��ġ ������ ���� �ٽ� �α�â���� ����*/
x="  korea";
put x $5.;
run;
