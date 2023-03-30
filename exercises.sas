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
input +1 exam mmddyy10. +1 result mmddyy10.;
duration = result - exam +1;
cards;
03-05-92 03-05-93
13-12-01 12-12-03
15-01-01 17-03-05
;
run;
proc print data=date4;
format exam result worddate17.;
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

/* (2) 읽은 엑셀파일 영구파일로 저장*/
/* (3) 저장된 영구파일 불러오기*/
