/* ���α׷��� ���� �������� ��ǥ�� �ʿ���ϴ� ������ �ϳ��� �Լ��� ������� ���̴�. ��, �Ϸ��� ������ �ý���ȭ �ص� ���̴�. �� ������ sas�� ���ϴ� ���*/
/* SAS�� R�� ���� ���α׷��� ����� ���ݺ��� ��Ű���� ������ ��������, �̷��� �κ��� �����ص� �ʿ�� �ִ�.*/
/* Ÿ ���α׷��� ���� function�� ���� ����� �ϴ� ���� ���⼭�� macro��� �θ���. */
data ed1;
input sc ge$ @@;
cards;
12 f 17 m 32 f 81 m 28f
; run;

data ed2;
input sc ge$ @@;
cards;
21 m 71 m 23 f 81 m 27 f
; run;

proc sort data=ed1 out=sed1;
by ge sc;
run;
proc print data=sed1; run;

proc sort data=ed2 out=sed2;
by ge sc;
run;
proc print data=sed2; run;

%macro ms(indata,outdata);
proc sort data=&indata out=&outdata;
by ge sc;
run;
%mend;

%ms(indata=ed1, outdata=med1); /* ���� �۾��� �����͸� �ٲ㰡�鼭 ��� ������ �� ������ �����ϴ�. */
%ms(indata=ed2, outdata=med2); /* macro�� ���ؼ��� % ǥ�ø� �ٿ��� �۾��Ѵٰ� �����ϸ� �ȴ�. ��, % keyword ������ �����̴�.*/

proc print data=med1;
proc print data=med2;

/* �ڼ��� �ٷ���� �� �б⸦ �Ҿ��ؾ� �ϹǷ� macro�� ���� ������ ��������� �����صθ� �ȴ�.*/
