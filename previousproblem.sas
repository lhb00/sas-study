/* 1. ���� 7, 26, 17, 32���� ���� ó������ �� �ܰ���� �ִ밪���� ��� ��� */
data q1;
maxi=7; tsum=0; k=1;
do i=7,26,17,32;
end;
put msum;
run;
/* 2. ���ɹ� �ϼ��Ͽ� ������ ���� */
data q2;
input age 4. .2 name $3. ge $ date date11.@@;
cards;
66.5 kim f
29 Jun 17
67.28 yunm
12-May-2020
;
run;
proc print;
run;
/* 3. q3 ����&����Ʈ */
data w3;
input mid final maj$ @@;
cards;
86 84 ���� 86 91 ����
79 63 ���� 58 68 ����
;
run;
data q3;
set w3;
if mid<80 then gu="a";
else if mid>=80 then if maj="����" then gu="b";
else gu="c";
run;
proc print;run;
/* 4. ave(mid�� final�� ���) ��� */
data q4;
set w3(drop=maj);
ave=(mid+final)/2;
libname grade '\\Mac\Home\Desktop\sas-study-main';
data grade.q4;
set grade.q4(keep=ave);
proc print data=grade.q4;
run;