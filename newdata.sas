/* sas로 데이터를 다루는 거에 더해서 시스템을 구축한다면, 더 알아야하는 정보가 있다. 그것이 오늘의 주제이다. */
/* 어려운 내용은 아니나 지루하지만, 중요한 내용이므로 잘 숙지해두자. */
/* sas가 어떤 메커니즘으로 데이터를 읽어들이고 기록하는 방법=> 이를 알아야만 해결 가능한 문제가 있다. */
/* PDV: cards문으로 데이터를 읽을 때 중간에 임시적인 매개변수의 형태로 정보가 머물게 된다. 이 정보가 머무는 공간이 PDV이다.*/
/* 변수들은 PDV 상에서 결측치로 시작하고, 시스템 변수들은 특정 값을 가지고 시작하게 된다.*/
/* data가 읽힐 때 변수들에 해당하는 PDV 공간이 확보 되는 것 X, data step이 시작될 때 확보됨.*/

data s1;
input m f@@;
cards;
3 5 4 7
; run;

data s2;
set s1; /* s1을 불러왔음에도 0개의 관측값이 있다고 나와있다. 왜 s1의 관측값들을 불러오지 못했는가? */
stop;
h = m * 2; /* 로그 창을 보면 3개의 변수가 있다.=> h가 생성되었음을 알 수 있다. => data step이 시작되는 순간 변수가 생성되므로 stop문과는 관련 X*/
run; /* data step의 _n_은 run을 만날 때 마다 다시 위쪽으로 올라가 1씩 증가한다.*/
/* 한 번에 한 개의 관찰치를 읽는 것이다. _n_=5라고 해서 5개의 관찰치를 한 번에 읽는 것이 절대 아님! */

data s3;
counter1=_n_; /* counter1, counter2 값이 차이나는 이유: data step문을 만나 1씩 증가했기 때문이다.*/
set s1;
counter2=_n_;
run;
proc print; run;

data s4;
set s1;
h = m * 2;
run;
proc print; run;
data s1;
input m f@@;
cards;
3 5 4 7
; run;

data r1;
input x j@@;
cards;
9 1
;run;

data h1;
merge r1 s1;
run;
proc print; run;

data h2;
set r1 s1;
run;
proc print; run;

data h3;
set r1; set s1;
run;
proc print; run;

data h4;
if _n_=1 then set r1;
set s1;
run;
proc print; run;
/* 굉장히 복합해보이는 결합 예제도 _n_ 값이 어떻게 변화하는지를 생각해보면 어렵지 않다.*/
