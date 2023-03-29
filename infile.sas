DATA aaa1;
INFILE 'abfile.txt'; /* 파일 경로를 구체적으로 지정하지 않은 상태*/
/* 버전에 따라 2번 방법이 먹히지 않는 경우가 있으므로 이 방법도 꼭 기억해두기!*/
INPUT ID 1-2 SEX $ 3 AGE 4-5 EDU 6 DEPT 7 WAGE 9-15 WKHR 16-19 .1;
run;
proc print;
run;
filename abc 'C:\Users\USER\Desktop\abfile.txt'; /* 파일에 이름 붙여주기, 파일을 abc로 부르겠다는 의미*/
DATA aaa2;
INFILE abc; /* 그래서 동일하게 INFILE문 사용*/
INPUT ID 1-2 SEX $ 3 AGE 4-5 EDU 6 DEPT 7 WAGE 9-15 WKHR 16-19 .1;
RUN;
PROC PRINT;
RUN;
/* 데이터에 한글이 들어가면 format을 정확하게 하더라도 SAS 자체에서 글자가 깨져서 나오는 경우가 있다.*/
/* 인코딩을 변경해서 저장해주면 이 부분을 해결할 수 있다. ANSI로 writing하면 되는데, 해결이 안되는 경우도 있다. 이 경우 다른 인코딩으로 저장해보면 된다.*/

/* 엑셀 파일을 불러올 때 첫 줄에 어지간하면 변수명을 적어주는 것이 좋다. 그렇지 않으면 추후에 명령문을 또 작성해야해서 매우 귀찮아진다.*/
/* SAS와 Excel의 비트 일치 必*/
/* 라이브러리: SAS 데이터가 만들어지면 저장되는 장소를 지정한다.*/
/* 멤버: 데이터명 지정*/
/* 메뉴로 실행하는 경우 편리하긴 하지만 한번에 실행할 수 없는 문제점이 있다. 반면 명령문은 조금 어려운 부분은 있지만 한 번에 실행이 가능하다.*/
proc print data=bb;
run;
