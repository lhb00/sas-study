/* 1. 수열 7, 26, 17, 32에서 수열 처음부터 각 단계까지 최대값들의 평균 계산 */
data q1;
maxi=7; tsum=0; k=1;
do i=7,26,17,32;
if i >maxi then maxi=i;
tsum=tsum+maxi;
k=k+1;
end;
k=k-1;
msum=tsum/k;
put msum;
run;
/* 2. 명령문 완성하여 데이터 생성 */
data q2;
options yearcutoff=1910;
input age name $3. ge $10 #2 date date11.;
cards;
66.5 kim f
29 Jun 17
67.28 yunm
12-May-2020
;
run;
proc print;
format date worddate12.;
run;
/* 3. q3 생성&프린트 */
data w3;
input mid final maj$ @@;
cards;
86 84 경제 86 91 응통
79 63 응통 58 68 무역
;
run;
data q3;
set w3;
if mid<80 then gu="a";
else if mid>=80 then if maj="응통" then gu="b";
else gu="c";
run;
proc print;run;
/* 4. ave(mid와 final의 평균) 출력 */
data q4;
set w3(drop=maj);
ave=(mid+final)/2;
libname grade '\\Mac\Home\Desktop\sas-study-main';
data grade.q4;
set q4(keep=ave);
proc print data=grade.q4;
run;
