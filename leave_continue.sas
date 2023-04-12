/* leave와 continue는 말 그대로의 의미로 해석해도 되지만, 둘 다 명령문을 중단시킨다는 공통점을 가지고 있다. 물론 결과가 일치하지는 않는다.*/
data br1;
do k=1 to 5;
k2=k+10;
put k;
if k > 2 then leave; /* leave의 의미: do 문장의 end문 바깥으로 나가라.*/
put k2;
end;
run;

data br2;
do k=1 to 5;
k2=k+10;
put k;
if k>2 then continue; /* 단순히 명령문을 계속 이어가라는 의미라면 continue의 존재 이유가 없다. flow chart가 중단된다는 의미.*/
/* continue가 있으면 continue 기준 위쪽의 문장을 다시 실행한다. => 3 이상 일 때 put k2는 실행되지 않는다.*/
put k2;
end;
run;

/* 자연수 1에서 100까지 합 계산*/
data eg1;
sum = 0;
do i=1 to 100;
sum=sum+i;
end;
put sum=;
run;

/* 자연수 1에서 100까지 평균 계산 */
data eg2;
sum = 0;
n = 0;
do j=1 to 100;
sum=sum+j;
n = n + 1;
end;
mean=sum/n;
put mean=;
run;
