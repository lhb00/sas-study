/* put/file/set문은 세트다. */
/* put문 데이터 스텝의 중간 단계에서 필요한 변수들을 프린트하는데 사용함.(proc print와 같이 따로 스텝을 생성해서 프린트하는 것이 아님.)*/
/* put문으로 데이터가 출력되는 장소는 로그창이니, 다른 곳을 찾아보면서 헤매지 말자. 물론 변경도 가능하다.*/
/* put문의 위치는 반드시 cards문의 바로 위에 와야한다. input문이 있을 시 데이터 인식한다.*/
data examd;
input id 1-2 sex $ age 4-5 edu 6 dept 7 sat 8 wage
9-15 wkhr 16-19 .1;
PUT ID SEX AGE EDU DEPT;
cards;
01M29112 3990001429
02F20111 4590002080
03M22221 3680001500
04F30222 4200019232
05F33121 4700021821
;
run;
data ex1; x = 123.45;
put x 8.4; /* 8: 123.4500이 8칸, .4: 소수 4째자리까지*/
run;
data ex2; x = "  korea";
put x $5.; /* $5. 왼쪽에서부터 5칸 인쇄 => "  kor" 인쇄됨.*/
run;
data ex3; x = 12345600;
put x best6.; /* 변수를 6칸으로 표기, 하지만 원 데이터와 최대한 가까운 값으로*/
put x best3.;
put x best2.;
run;
