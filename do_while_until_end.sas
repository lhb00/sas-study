/* do ������ ��� 2���� (1) �ݺ����� ���� => �ֿ� ��� (2) ��ɹ��� ����(group)�� ����� �ִ� ���*/
/* ��ɹ��� �����̶�? �Ϲ����� ���๮�� ��� �ϳ��ε�, do�� Ȱ���ϸ� ���� ���� ���๮ ������ �����ϴ�. �� �ǹ�.*/
/* 1.�ܼ� do��*/
data test0;
input x y k;
/* do�� end ���̿� ������ ������ �־��ָ� ��.*/
/* �̷������� ��ɹ��� ����ȭ�� ���ִ� ��.*/
if k>0 then do;
xsquare = x * x;
put @10 k = @20 x = @40 xsquare=; /* @: input�� @�� ���� �ǹ�, @10�� 10��° ĭ���� ���� �����϶�� �ǹ�*/
/* k=. x=��  k=n, x=n�� ���� ���·� �μ��ϰ� ���ش�.*/
end;
else do;
ysquare=y*y;
put @10 k= @20 y = @40 ysquare=;
end;

cards;
2 3 -2
5 2 3
4 6 -1
;
run;

/* 2. �ݺ� do��*/
data test1;
do i=1 to 10 by 2; /* i���� Ư�� ������ ������ ������ �ݺ�(Ƚ���� �ƴ�). do���� end���� �ݺ�*/
/* i�� ���� �Ҷ� by increment���� increment��ŭ ����*/
j = i * i;
put i j;
end;
run;
/* �ݺ��� ��� X, i=3�� ���̽����� ��ɹ� ����*/
data test2;
do i=3;
j = i * i;
put i j;
end;
run;
data test3;
do i=1 to 10; /* by increment �κ��� �����Ǹ� ����ġ�� default ���� 1�� �����ȴ�.=> ����ġ�� 1�� ��� by���� ���� �ۼ��� �ʿ䰡 ����.*/
j= i * i;
put i j;
end;
run;
data test4;
do i=1, 3, 5, 7, 9; /* i�� ������ 1, 3, 5, 7, 9 ������� ���ϸ鼭 ��ɹ��� ����ȴ�.*/
/* �Է��Ϸ��� �����͵��� ���������� �ƴ� ��쿡 ����ϸ� �����ϴ�.*/
j= i * i;
put i j;
end;
run;
data test5;
input a @@;
do i=a;
j= i * i;
put i j;
end;
/* �̷������� cards������ i�� ���� �� �ݺ��� �����ϴ� �͵� ����*/
cards;
1 3 5 7 9
run;
data test6;
do i=1 to 10, -2 to -1; /* 1���� 10���� �ݺ� �� -2���� -1���� �ٽ� �ݺ�*/
j= i * i;
put i j;
end;
run;
data test7;
do i="one", "two", "three";  /* format�� ����ϸ� �ذ��� �ǳ� �⺻������ ù��° ������ ������ �������� �����͸� ����ϱ� ���� ������ Ȯ���Ѵ�.(��, 3��° j�� three�� �±��ϴ�.) �׷��� thr������ ��µȴ�.*/
put i;
end;
data test7_1;
do j="one  ", "two", "three"; /* ù��° ������ �̷������� �Է��ϸ� �ذ�ȴ�.*/
put j;
end;
run;
data test8;
do i=1.23 to 2.5 by 0.023; /* do���� �������� �������� �ʴ´�.*/
j= i * i;
put i j;
end;
run;
data test9;
k=0; n=5; m=0.5;
do i=k to n by m; /* ���� �Ҵ� �� �� ������ Ȱ���� do�� �ۼ� ����*/
j= i * i;
put i j;
end;
run;
/* �Ʒ� ���õ���ʹ� �⺻���� ���¿��� ������ do���̴�.*/
data test10;
k=1;
do i=1 to 500 while (k<5); /* �ڿ� while���� ������ while���� �켱������ ����Ѵ�.*/
k=k+1;
put i k;
end;
run;
data test11;
k=1;
do i=1 to 500 until (k>=5); /* until�� while�� ������, ������ �ݴ�� ���ֱ⸸ �ϸ� �ȴ�. => k�� 5 �̻��� �� �� ���� �ݺ�*/
k=k+1;
put i k;
end;
run;
data test12;
do k=1 to 5;
end; /* end���� ������ ���� �μ��� ���ϴ� �����̴�.�׷��� 5�϶��� ������ �ǰ�, k�� 6�� �ȴ�.*/
put k;
run;
data test13;
do k=1 to 5;
x=uniform(0); output; /* 0���� 1 ������ ���� �ϳ��� �̾Ƽ� x�� �Ҵ�. �Ű������� �� 0�� �ƹ� �ǹ̰� ����.*/
if x>0.6 then k=10; /* �߰��� Ư������ �����ؼ� �����ϴ� �͵� �����ϴ�.*/
end;
run;
proc print;run;
data test14;
do i=1 to 3;
do j=6 to 8;
k= i * i;
put i j k;
end;
end; /* 2�� �ݺ���, i=>1 j=>6, 7, 8 i=2, j=>6, 7, 8 i=3, j=>6, 7, 8*/
run;
/* 3. do while��*/
data test15;
n=1;
do while(n<3); /* while���� ������ �����ϴ� ���� �ݺ� ����*/
put n;
n+1; /* n=n+1�� ���� �ǹ�. n+1�� ������ ���ѷ���=>do while���̳� do until�� ��� �� ���� ������� ������ ��  �־��־����.*/
end;
run;
/* 4. do until��*/
data test16;
n=1;
do until (n>=3); /* until���� ������ �������� �ʴ� ���� �ݺ� ����*/
put n;
n+1;
end;
run;
