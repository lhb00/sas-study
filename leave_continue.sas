/* leave�� continue�� �� �״���� �ǹ̷� �ؼ��ص� ������, �� �� ��ɹ��� �ߴܽ�Ų�ٴ� �������� ������ �ִ�. ���� ����� ��ġ������ �ʴ´�.*/
data br1;
do k=1 to 5;
k2=k+10;
put k;
if k > 2 then leave; /* leave�� �ǹ�: do ������ end�� �ٱ����� ������.*/
put k2;
end;
run;

data br2;
do k=1 to 5;
k2=k+10;
put k;
if k>2 then continue; /* �ܼ��� ��ɹ��� ��� �̾��� �ǹ̶�� continue�� ���� ������ ����. flow chart�� �ߴܵȴٴ� �ǹ�.*/
/* continue�� ������ continue ���� ������ ������ �ٽ� �����Ѵ�. => 3 �̻� �� �� put k2�� ������� �ʴ´�.*/
put k2;
end;
run;

/* �ڿ��� 1���� 100���� �� ���*/
data eg1;
sum = 0;
do i=1 to 100;
sum=sum+i;
end;
put sum=;
run;

/* �ڿ��� 1���� 100���� ��� ��� */
data eg2;
sum = 0;
n = 0;
do j=1 to 100;
sum=sum+j;
n = n + 1;
end;
mean=sum/n;
put mean=;
run;
