/* libname문으로 저장할 시 특정 디렉토리를 지정하는 것이 아니고, 먼저 위치의 이름을 정의한다. 이를 라이브러리(library)라고 부른다.*/
/* WORK 라이브러리는 임시 저장소이다. 라이브러리긴 하지만, 컴퓨터를 끄는 순간 메모리에서 삭제된다. 즉 따로 라이브러리를 정의해주고 거기에 저장해야 사라리지 않는다.*/
/* 또한, 라이브러리가 WORK인 경우에는 데이터명 앞에 라이브러리 명을 붙여주지 않아도 된다.*/
LIBNAME AAA 'C:\Users\USER\Desktop';
DATA AAA.SCORE;
INPUT VERBAL VISUAL WORD MAZE ADD
			SHAPE ANAGRAM SPACE NUMBER MENTAL;
CARDS;
8.2 5.7 34 14 62 21 39 9 22 5
7.8 4.0 36 14 69 22 30 10 19 13
;
RUN;
DATA EXAM1202;
SET AAA.SCORE;
RUN;
PROC PRINT;
RUN;
/* LIBNAME: 라이브러리를 지정하는 키워드*/ 
LIBNAME AAA 'C:\Users\USER\Desktop';
DATA EXAM1203;
SET AAA.SCORE;
RUN;
/* input을 계속 귀찮게 여러번 쓸 필요 없이 한 번 정의가 완료되었다면 이런식으로 하면 된다.*/
PROC MEANS DATA=EXAM1203;
RUN;
/* work 라이브러리는 위치가 어딘지 몰라도 된다.*/
LIBNAME AAA 'C:\Users\USER\Desktop';
