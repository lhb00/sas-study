/* 연습문제 1 */
/* (1) Free(List) Input 형태 입력 */
data data1;
input sex $ type $ convienience safety freedom satisfaction;
cards;
여 아파트 9.1 9 8.7 9
여 아파트 8.5 8.8 8 8.5
남 아파트 9.2 8.7 8.3 8.6
여 아파트 8.3 8.9 8.4 8.4
남 아파트 7.2 8.4 8.2 8
남 아파트 8.5 7.9 7.2 7.8
남 아파트 8.7 8.7 8 8.4
남 아파트 8.4 8.3 7.5 8
남 단독주택 8.3 7.2 8.8 8
여 단독주택 8.5 6.8 8.3 7.3
여 단독주택 7.2 7.9 8.7 7.9
여 단독주택 8.1 8.3 8.5 8.2
남 단독주택 7.8 8.4 9.1 8.3
남 단독주택 8.8 7.6 8.2 8.2
여 연립주택 7.2 8.2 8.1 7.7
남 연립주택 7.4 8 7.9 7.5
여 연립주택 7.8 7.8 7.8 7.8
남 연립주택 8.1 8.6 8.4 8.5
남 연립주택 8.3 8.1 7.6 8
;
run;
proc print;run;
/* (2) Column Input 형태 입력 */
data data2;
input sex $1-3 type $4-11 convienience 12-15 .1 safety 16-19 .1 freedom 20-23 .1 satisfaction 24-27 .1;
cards;
여 아파트   9.1 9.0 8.7 9.0
여 아파트   8.5 8.8 8.0 8.5
남 아파트  9.2 8.7 8.3 8.6
여 아파트   8.3 8.9 8.4 8.4
남 아파트  7.2 8.4 8.2 8.0
남 아파트  8.5 7.9 7.2 7.8
남 아파트  8.7 8.7 8.0 8.4
남 아파트  8.4 8.3 7.5 8.0
남 단독주택 8.3 7.2 8.8 8.0
여 단독주택 8.5 6.8 8.3 7.3
여 단독주택 7.2 7.9 8.7 7.9
여 단독주택 8.1 8.3 8.5 8.2
남 단독주택 7.8 8.4 9.1 8.3
남 단독주택 8.8 7.6 8.2 8.2
여 연립주택 7.2 8.2 8.1 7.7
남 연립주택 7.4 8.0 7.9 7.5
여 연립주택 7.8 7.8 7.8 7.8
남 연립주택 8.1 8.6 8.4 8.5
남 연립주택 8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (3) Format Input 형태 입력 */
data data3;
input (sex type convienience safety freedom satisfaction) ($3. $9. 4*4.);
cards;
여 아파트   9.1 9.0 8.7 9.0
여 아파트   8.5 8.8 8.0 8.5
남 아파트   9.2 8.7 8.3 8.6
여 아파트   8.3 8.9 8.4 8.4
남 아파트   7.2 8.4 8.2 8.0
남 아파트   8.5 7.9 7.2 7.8
남 아파트   8.7 8.7 8.0 8.4
남 아파트   8.4 8.3 7.5 8.0
남 단독주택 8.3 7.2 8.8 8.0
여 단독주택 8.5 6.8 8.3 7.3
여 단독주택 7.2 7.9 8.7 7.9
여 단독주택 8.1 8.3 8.5 8.2
남 단독주택 7.8 8.4 9.1 8.3
남 단독주택 8.8 7.6 8.2 8.2
여 연립주택 7.2 8.2 8.1 7.7
남 연립주택 7.4 8.0 7.9 7.5
여 연립주택 7.8 7.8 7.8 7.8
남 연립주택 8.1 8.6 8.4 8.5
남 연립주택 8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (4) 두줄이 한 개의 관찰치가 되는 형태 입력 */
data data4;
input @3 sex $2. @5 type $8. #2 convenience 1-3 safety 5-7 freedom 9-11 satisfaction 13-15;
cards;
  여 아파트    
9.1 9.0 8.7 9.0
  여 아파트    
8.5 8.8 8.0 8.5
  남 아파트    
9.2 8.7 8.3 8.6
  여 아파트    
8.3 8.9 8.4 8.4
  남 아파트    
7.2 8.4 8.2 8.0
  남 아파트    
8.5 7.9 7.2 7.8
  남 아파트    
8.7 8.7 8.0 8.4
  남 아파트    
8.4 8.3 7.5 8.0
  남 단독주택 
8.3 7.2 8.8 8.0
  여 단독주택 
8.5 6.8 8.3 7.3
  여 단독주택 
7.2 7.9 8.7 7.9
  여 단독주택 
8.1 8.3 8.5 8.2
  남 단독주택 
7.8 8.4 9.1 8.3
  남 단독주택 
8.8 7.6 8.2 8.2
  여 연립주택     
7.2 8.2 8.1 7.7
  남 연립주택     
7.4 8.0 7.9 7.5
  여 연립주택     
7.8 7.8 7.8 7.8
  남 연립주택     
8.1 8.6 8.4 8.5
  남 연립주택     
8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* (5) 자료가 계속 이어진 형태 경우 가정 입력 */
data data5;
input sex $ type $ convienience safety freedom satisfaction @@;
cards;
여 아파트    9.1 9.0 8.7 9.0 여 아파트    8.5 8.8 8.0 8.5 남 아파트    9.2 8.7 8.3 8.6 
여 아파트    8.3 8.9 8.4 8.4 남 아파트    7.2 8.4 8.2 8.0 남 아파트    8.5 7.9 7.2 7.8
남 아파트    8.7 8.7 8.0 8.4 남 아파트    8.4 8.3 7.5 8.0 남 단독주택 8.3 7.2 8.8 8.0
여 단독주택 8.5 6.8 8.3 7.3 여 단독주택 7.2 7.9 8.7 7.9 여 단독주택 8.1 8.3 8.5 8.2
남 단독주택 7.8 8.4 9.1 8.3 남 단독주택 8.8 7.6 8.2 8.2 여 연립주택     7.2 8.2 8.1 7.7
남 연립주택     7.4 8.0 7.9 7.5 여 연립주택     7.8 7.8 7.8 7.8 남 연립주택     8.1 8.6 8.4 8.5
남 연립주택     8.3 8.1 7.6 8.0
;
run;
proc print;run;
/* 변수명 한글로 사용은 가능하나 매우 귀찮아지므로 영어로 적당히 작성하자.*/
/* 연습문제 2 */
/* (1) 날짜 변수로 지정 */
/* (2) 경과일 변수 생성 */
/* (3) 시험날짜, 결과날짜. 경과일 인쇄*/
data date1;
input exam date7. +1 result date7.;
duration = result - exam +1;
cards;
03May92 03May93
13Dec01 12Dec03
15Jan01 17Mar05
;
run;
proc print data=date1;
format exam result worddate12.;
run;
data date2;
input exam date9. +1 result date9.;
duration = result - exam +1;
cards;
03May1992 03May1993
13Dec2001 12Dec2003
15Jan2001 17Mar2005
;
run;
proc print data=date2;
format exam result worddate12.;
run;
data date3;
input exam date11. +1 result date11.;
duration = result - exam +1;
cards;
03-May-1992 03-May-1993
13-Dec-2001 12-Dec-2003
15-Jan-2001 17-Mar-2005
;
run;
proc print data=date3;
format exam result worddate12.;
run;
data date4;
input exam ddmmyy8. +1 result ddmmyy8. ;
duration = result - exam +1;
cards;
03-05-92 03-05-93
13-12-01 12-12-03
15-01-01 17-03-05
;
run;
proc print data=date4;
format exam result worddate12.;
run;
data date4;
input exam ddmmyy8. +1 result ddmmyy8. ;
duration = result - exam +1;
cards;
03-05-92 03-05-93
13-12-01 12-12-03
15-01-01 17-03-05
;
run;
proc print data=date4;
format exam result worddate12.;
run;
data date5;
input exam ddmmyy6. +1 result ddmmyy6. ;
duration = result - exam +1;
cards;
030592 030593
131201 121203
150101 170305
;
run;
proc print data=date5;
format exam result worddate12.;
run;
data date6;
input exam ddmmyy10. +1 result ddmmyy10. ;
duration = result - exam +1;
cards;
03-05-1992 03-05-1993
13-12-2001 12-12-2003
15-01-2001 17-03-2005
;
run;
proc print data=date6;
format exam result worddate12.;
run;
/* 연습문제 3 */
/* (1) 주거 데이터로 데이터 셋 생성 */
/* 1) 거주형태, 편의도, 만족도만 포함된 데이터 */
data residence;
input sex $1-3 type $4-12 convienience 13-16 .1 safety 17-20 .1 freedom 21-24 .1 satisfaction 25-27 .1;
cards;
여 아파트   9.1 9.0 8.7 9.0
여 아파트   8.5 8.8 8.0 8.5
남 아파트   9.2 8.7 8.3 8.6
여 아파트   8.3 8.9 8.4 8.4
남 아파트   7.2 8.4 8.2 8.0
남 아파트   8.5 7.9 7.2 7.8
남 아파트   8.7 8.7 8.0 8.4
남 아파트   8.4 8.3 7.5 8.0
남 단독주택 8.3 7.2 8.8 8.0
여 단독주택 8.5 6.8 8.3 7.3
여 단독주택 7.2 7.9 8.7 7.9
여 단독주택 8.1 8.3 8.5 8.2
남 단독주택 7.8 8.4 9.1 8.3
남 단독주택 8.8 7.6 8.2 8.2
여 연립주택 7.2 8.2 8.1 7.7
남 연립주택 7.4 8.0 7.9 7.5
여 연립주택 7.8 7.8 7.8 7.8
남 연립주택 8.1 8.6 8.4 8.5
남 연립주택 8.3 8.1 7.6 8.0
;
data residence1;
set residence ( KEEP = type convienience freedom satisfaction);
run;
proc print; run;
/* 2) 편의도 8.5 이상으로 구성된 데이터 */
data residence2;
set residence;
if convienience>=8.5;
run;
proc print; run;
/* 3) 아파트와 연립주택 포함하는 데이터와 단톡주택만의 데이터 */
data residence3_1 residence3_2;
set residence;
if type='아파트   ' | type='연립주택 ' then output residence3_1;
else output residence3_2;
run;
proc print data=residence3_1;
run;
proc print data=residence3_2;
run;
/* (2) 주거 데이터를 text file로 생성 후 sas 데이터 셋으로 읽어 오기*/
filename residencefile '\\Mac\Home\Desktop\exercise3_2.txt';
data datafile;
						infile 'exercise3_2.txt' encoding="utf-8";
						input sex $1-3 type $4-11 convienience 12-15 .1 safety 16-19 .1 freedom 20-23 .1 
											satisfaction 24-27 .1;
run;
proc print;
run;
/* 연습문제 4 */
/* (1) Excel 파일로 만든 후 SAS로 불러오기 */
proc print data=exercise4;
run;
/* (2) 읽은 엑셀파일 영구파일로 저장*/
libname AAA '\\Mac\Home\Desktop\sas-study-main';
/* (3) 저장된 영구파일 불러오기*/
data exercise4_3;
set AAA.exercise4_2;
proc print;
run;
/* 연습문제 5 */
/* (1) a1과 a2를 결합하여 a3 생성*/
data a1;
input name $ sex $;
cards;
문홍규 M
김정민 F
최준영 M
강유진 F
;
data a2;
input name $ sex $;
cards;
이소윤 F
윤주호 M
이형진 M
서민경 F
윤지희 F
;
data a3; set a1 a2; run;
proc print;run;
data b1;
input name $;
cards;
구옥교
태보린
윤봉창
;
run;
data b2;
input year made $ cname $;
cards;
1998 대우 레간자
1996 쌍용 무소
1992 대우 슈퍼살롱
;
data b3;set b1; set b2; run;
proc print;run;
/* (2) b1과 b2를 결합하여 b3 생성*/
data b3;
merge b1 b2; run;
proc print;run;
/* (3) c1과 c2를 결합하여 c3 생성*/
data c1;
input name $ year made $ cname $;
cards;
태보린 1996 쌍용 무쏘
장유인 1992 현대 소나타
구옥교 1998 대우 레간자
윤봉창 1992 대우 슈퍼살롱
;
data c2;
input name $  color $;
cards;
태보린 청색
구옥교 회색
윤봉창 백색
장유인 쥐색
이마종 홍색
이제가 백색
;
proc sort data = c1;
by name; run;
proc sort data = c2;
by name; run;
data c3;
		merge c1 c2;
		by name;
		run;
proc print;run;
/* 연습문제 6*/
/* (1) 1에서 100까지의 합 계산 */
data exercise6_1;
sum1=0;
do i1=1 to 100;
sum1= sum1 +  i1;
end;
put sum1=;
run;
/* (2) 1에서 1000까지 5의 배수의 합 계산 */
data exercise6_2;
sum2=0;
do i2=0 to 1000 by 5;
sum2 = sum2 + i2;
end;
put sum2=;
run;
/* (3) 자연수를 1부터 차례로 더하여 10000이 넘기 전까지 합 계산 */
/* (1) do_while문*/
data exercise6_3_1;
sum3_1=0;
do i3_1=1 to 10000 while (sum3_1<=10000);
sum3_1=sum3_1+i3_1;
end;
sum3_1=sum3_1-i3_1+1;
put sum3_1=;
run;
/* 2) do_until문*/
data exercise6_3_2;
sum3_2=0;
do i3_2=0 until (sum3_2>10000);
sum3_2=sum3_2+i3_2;
end;
sum3_2=sum3_2-i3_2+1;
put sum3_2=;
run;
/* (4) 5에서 시작하여 5의 배수를 3개 더한 값 계산(5도 포함)*/
data exercise6_4;
sum4=0;
do i4=1 to 3;
sum4 = sum4 + i4 *5;
end;
put sum4;
run;
/* 연습문제 7 */
