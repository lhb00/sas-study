/* file문은 infile문과 반대로 데이터를 외부에 txt 파일로 만드는 것이다. */
/* file문을 활용, put문의 default 출력 위치가 로그창인데, 이를 변경할 수 있다.*/
DATA aaa1;
file 'out.txt' PRINT;
DO I = 1 TO 10;
II = I * I;
PUT I II;
END; /* 반복문, end를 만날때 마다 반복하여 10에서 종료된다.*/
RUN;
filename abc 'C:\Users\USER\Desktop\out.txt';
DATA aaa2;
FILE abc PRINT; /* infile문과 마찬가지로 filename 없이 file문에서 바로 경로를 작성해도 된다.(최신 버전)*/
DO I = 1 TO 10;
II = I * I;
PUT I II;
END;
RUN;
data aaa3;
do i=1 to 10;
ii=i*i;
put i ii;
end;
run;
data aaa4;
file print; /* file print: 로그창에 출력하던 것을 결과창에 출력하도록 기능함.*/
do i=1 to 10;
ii=i*i;
put i ii;
end;
run;
data aaa5;
file print;
do i=1 to 10;
ii=i*i;
put i ii;
end;
file log; /* file print로 출력 위치 변경한 것을 다시 로그창으로 변경*/
x="  korea";
put x $5.;
run;
