/* 연습문제 1 */
/* (1) Free(List) Input 형태 입력 */
data data1;
input sex type $ convienience safety freedom satisfaction;
cards;
F Apart 9.1 9 8.7 9
F Apart 8.5 8.8 8 8.5
M Apart 9.2 8.7 8.3 8.6
F Apart 8.3 8.9 8.4 8.4
M Apart 7.2 8.4 8.2 8
;
/* (2) Column Input 형태 입력 */
/* (3) Format Input 형태 입력 */
/* (4) 두줄이 한 개의 관찰치가 되는 형태 입력 */
/* (5) 자료가 계속 이어진 형태 경우 가정 입력 */
/* 변수명 한글로 사용은 가능하나 매우 귀찮아지므로 영어로 적당히 작성하자.*/
/* 연습문제 2 */
/* (1) 날짜 변수로 지정 */
/* (2) 경과일 변수 생성 */
/* 시험날짜, 결과날짜. 경과일 인쇄*/
