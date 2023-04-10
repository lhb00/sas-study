/* do 문장의 기능 2가지 (1) 반복문을 수행 => 주요 기능 (2) 명령문의 집단(group)을 만들어 주는 기능*/
/* 명령문의 집단이란? 일반적인 실행문의 경우 하나인데, do를 활용하면 여러 개의 실행문 실행이 가능하다. 이 의미.*/
/* 1.단순 do문*/
data test0;
input x y k;
/* do와 end 사이에 실행할 내용을 넣어주면 됨.*/
/* 이런식으로 명령문의 집단화를 해주는 것.*/
if k>0 then do;
xsquare = x * x;
put @10 k = @20 x = @40 xsquare=; /* @: input의 @와 같은 의미, @10은 10번째 칸으로 가서 실행하라는 의미*/
/* k=. x=은  k=n, x=n과 같은 형태로 인쇄하게 해준다.*/
end;
else do;
ysquare=y*y;
put @10 k= @20 y = @40 ysquare=;
end;

cards;
2 3 -2
5 2 3
4 6 -1
;
run;

/* 2. 반복 do문*/
data test1;
do i=1 to 10 by 2; /* i값이 특정 조건을 만족할 때까지 반복(횟수가 아님). do에서 end까지 반복*/
/* i가 증가 할때 by increment에서 increment만큼 증가*/
j = i * i;
put i j;
end;
run;
/* 반복의 기능 X, i=3인 케이스에서 명령문 종료*/
data test2;
do i=3;
j = i * i;
put i j;
end;
run;
data test3;
do i=1 to 10; /* by increment 부분이 생략되면 증가치가 default 값인 1로 설정된다.=> 증가치가 1인 경우 by문을 굳이 작성할 필요가 없다.*/
j= i * i;
put i j;
end;
run;
data test4;
do i=1, 3, 5, 7, 9; /* i에 지정한 1, 3, 5, 7, 9 순서대로 변하면서 명령문이 실행된다.*/
/* 입력하려는 데이터들이 등차수열이 아닌 경우에 사용하면 유용하다.*/
j= i * i;
put i j;
end;
run;
data test5;
input a @@;
do i=a;
j= i * i;
put i j;
end;
/* 이런식으로 cards문으로 i를 받은 후 반복문 실행하는 것도 가능*/
cards;
1 3 5 7 9
run;
data test6;
do i=1 to 10, -2 to -1; /* 1부터 10까지 반복 후 -2부터 -1까지 다시 반복*/
j= i * i;
put i j;
end;
run;
data test7;
do i="one", "two", "three";  /* format을 사용하면 해결이 되나 기본적으로 첫번째 들어오는 변수를 기준으로 데이터를 출력하기 위한 공간을 확보한다.(즉, 3번째 j도 three가 맞긴하다.) 그래서 thr까지만 출력된다.*/
put i;
end;
data test7_1;
do j="one  ", "two", "three"; /* 첫번째 변수를 이런식으로 입력하면 해결된다.*/
put j;
end;
run;
data test8;
do i=1.23 to 2.5 by 0.023; /* do문은 정수에만 한정되지 않는다.*/
j= i * i;
put i j;
end;
run;
data test9;
k=0; n=5; m=0.5;
do i=k to n by m; /* 변수 할당 후 그 값들을 활용한 do문 작성 가능*/
j= i * i;
put i j;
end;
run;
/* 아래 예시들부터는 기본적인 형태에서 변형된 do문이다.*/
data test10;
k=1;
do i=1 to 500 while (k<5); /* 뒤에 while문을 붙으면 while문을 우선적으로 고려한다.*/
k=k+1;
put i k;
end;
run;
data test11;
k=1;
do i=1 to 500 until (k>=5); /* until은 while과 같은데, 조건을 반대로 해주기만 하면 된다. => k가 5 이상이 될 때 까지 반복*/
k=k+1;
put i k;
end;
run;
data test12;
do k=1 to 5;
end; /* end값을 만났을 때가 인수가 변하는 지점이다.그래서 5일때도 실행이 되고, k가 6이 된다.*/
put k;
run;
data test13;
do k=1 to 5;
x=uniform(0); output; /* 0에서 1 사이의 난수 하나를 뽑아서 x에 할당. 매개변수로 들어간 0은 아무 의미가 없다.*/
if x>0.6 then k=10; /* 중간에 특정값을 지정해서 변경하는 것도 가능하다.*/
end;
run;
proc print;run;
data test14;
do i=1 to 3;
do j=6 to 8;
k= i * i;
put i j k;
end;
end; /* 2중 반복문, i=>1 j=>6, 7, 8 i=2, j=>6, 7, 8 i=3, j=>6, 7, 8*/
run;
/* 3. do while문*/
data test15;
n=1;
do while(n<3); /* while문의 조건을 만족하는 동안 반복 수행*/
put n;
n+1; /* n=n+1과 같은 의미. n+1이 없으면 무한루프=>do while문이나 do until문 사용 시 루프 벗어날만한 조건을 꼭  넣어주어야함.*/
end;
run;
/* 4. do until문*/
data test16;
n=1;
do until (n>=3); /* until문의 조건을 만족하지 않는 동안 반복 수행*/
put n;
n+1;
end;
run;
