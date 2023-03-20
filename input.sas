/* pointer control은 앞의 3가지 input을 운용하는 방법이라고 생각하면 된다.*/
data one;
input name $ age; /* input문에서 꼭 필요한 요소: 1. 변수의 이름 2. 변수의 유형 3. 변수의 길이(어디부터 어디까지가 이 변수다)*/
/* 이를 알려주는 방식이 3가지가 있다. $표시가 뒤에 따라오면 문자형, 없으면 숫자형이다. 빈칸이 나타나면 그 다음 데이터 값으로 이동한다.(빈칸으로 구분)*/
/* sas에서 결측치를 공백으로 처리하면 결과에 상당한 문제가 생기게 된다. 따라서 공백이 아니라 마침표를 찍어줘야 한다.*/
cards;
s.yoon 28
h.sim 29
d.kim 28
;
run;
proc print;
run;
data two;
input name $ & age; /* &의 의미: 문자형 변수에서 중간에 공백이 있다고 하더라도 다음 변수로 넘어가지 않는다. 따라서 다음 변수로 넘기려면, 데이터와 데이터 사이에 빈칸을 2개 넣어줘야한다.*/
cards;
s. yoon  28
h. sim  29
d. kim  28
;
run;
proc print;
run;
data three;
input name$; /* 사칙 연산 불가능한 문자로 취급 받는다. 그래서 우측 정렬이 아니라 좌측 정렬이다.*/
cards;
1
2
;
run; proc print; run;
data four;
input name; /* 숫자형 변수 자리에 문자를 넣어버리면 결측치로 처리된다.*/
cards;
a
b
;
run; proc print; run;
/* list input: 편리하긴 하지만 공백에 굉장히 민감하기 때문에 위험한 방법이다.*/
/* 숫자1-숫자2; 시작점-끝점*/
/* 한글은 한 글자 당 2바이트로 처리하기 때문에 아래의 경우 5글자까지 가능*/
data ip1;
input name $1-10 pulse 11-13 waist 14-15 age 16;
cards;
kimsungill399658
parkseri  283746
kimmihyun 938726
;
run;
proc print;
run;
/* 굳이 이름 정의할 필요 없는 컬럼은 아래처럼 정의하지 않아도 된다.*/
data ip2;
input name $1-10 age 16;
cards;
kimsungill399658
parkseri  283746
kimmihyun 938726
; run;
proc print;run;
data ip3
input age 16 pulse 11-13;
cards;
kimsungill399658
parkseri  283746
kimmihyun938726
;
run;
proc print;run;
/*.2: 소수점 둘째자리까지 표기한 것을 값으로 해라*/
data ip4;
input number 11-15 .2;
cards;
kimsungill399658
parkseri 283746
kimmihun 938726
;
run;
proc print;run;
/*앞에 in이 붙어있는 명령어들: 기능은 똑같은데 in이 붙어 있으면 데이터를 불러들일 때, 없으면 데이터를 내보낼 때 사용한다고 생각하면 된다.*/
data ip1;
input (score1-score5) (4. 4. 4. 4. 4.); /* format 방식의 특징: 소수점을 반드시 포함한다.(길이가 몇인지 구분)*/
cards;
39900014291928374652
28374659864590002080
;
run;
proc print;
run;
data ip2;
input (score1-score5) (4.); /* 앞과 같은 의미*/
cards;
39900014291928374652
28374659864590002080
;
run;
proc print;
run;
data ip3;
input (a b) ($5.); /*문자형 변수이므로 $를 넣고 숫자를 넣으면 된다. 5번째 글자 기준으로 2개의 변수로 나눠진다.*/
cards;
kimsshighs
parkjunive
;
run;
proc print;
run;
data ip4;
input (name score1-score5) ($10. 5*4.); /*4자리씩 읽어들여 5개의 변수로 나눈다. 문자형 변수의 경우 빈칸이 결측치로 인정된다.*/
cards;
kimsungill39900014291928374652
parkseri  28374659864590002080
kimmihun 93872635533400001822
; run; proc print; run;
data one;
input a $5.; /* a $char5. 도 같은 결과 */
cards;
abcde
 abcde
ab cde
ab  cde
;
run;
/* 문자형 변수의 첫 빈칸은 무시하고 읽어들인다. 두 개의 빈칸은 한 개로 간주하고 읽어들인다.*/
proc print;
run;
data two;
input a $1-5;
cards;
abcde
 abcde
ab cde
ab  cde
;
proc print;
run;
data ip1;
input @15 sales 5. ; /* @: 데이터를 읽어들일 때 시작점을 옮길 수 있다. 즉 데이터를 15번째 칸부터 읽어들이라는 뜻이다.*/
cards;
kimsungill399658788
parkseri  283746837
kimmihyun 938726987
; run; proc print; run;
data ip2;
input @22 book 3. @1 company 2. ;
cards;
39965878828374683793872698
28374683793872698725736495
19283764576945847363732829
; run; proc print;run;
data ip3;
input name $1-10 @15 pulse 3.;
cards;
kimsungill399658788
parkseri  283746937
kimmihyun 938726987
; run; proc print; run;
/* 3가지 방법 혼용 가능*/
data ip4;
input @12 name $10. #2 id 3-4;
cards;
           kimsungill
  12
           parkseri
  24
           kimmihyun
  36
;
/* #: 하나의 단위에서 줄 바꿈을 하여 생성할 시에 이용하는 기호*/
run;
proc print;
run;
data ip5;
/* #을 이용해서 줄을 이동할 때 2->3번째 처럼 꼭 순차적으로 갈 필요가 없다*/
/* #3를 넣건 빼건 똑같이 작동한다. 그럼 넣은 이유는? 구버전에서는 3번째 줄로 이동하지 않고 2번째 줄에서 끝내면, 3번째 줄부터 데이터를 읽어버린다. 그래서 넣은 것이고, 현재 버전에서는 빼도 되긴한다. 하지만 넣는게 낫다.*/
input @31 age 3. #3 id 3-4 #2 @6 name $10. #3;
cards;
399658788399658788399658788399658788
     kimsungill
  12
283746837283746837283746837283746837
     parkseri
  24
938726987938726987938726987938726987
     kimmihyun
  36
;run;proc print;run;
data ip6;
input name$ age @@; /*@@를 빼버리면 lee에서 바로 jun으로 넘어간다. 즉, @@의 의미는 한 줄에 여러 가지 케이스가 연속으로 이어진다는 것을 알려주는 의미다.*/
cards;
lee 33 park 22 kim 25
jun 16 seo 22 yoon 17
;
run;
proc print;
run;
data ip7;
/* 단독으로 있는 @의 의미: 일시정지*/
input status $ 1 @;
		if status="p" then input course $ profname $ 12-32;
else if status="s" then input course $ id name $ 19-39;
cards;
p stat1111 S.G.LEE
s stat1111 952210 Honggildong
;
/* list input으로 하면 최대 8글자까지만 입력이 가능하기 때문에 홍길동의 이름이 잘려서 나온다. 따라서 무조건 column input으로 해줘야 한다.*/
run;
proc print;
run;
data ip8;
input name $1-10 +5 pulse 3.;
cards;
kimsungill399658788
parkseri 283746837
kimmihyun 938726987
;
run;
/* +숫자=> reading point를 숫자만큼 뒤로 옮겨준다. '-'는 안된다.*/
proc print;run;

