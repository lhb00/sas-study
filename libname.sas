/* libname������ ������ �� Ư�� ���丮�� �����ϴ� ���� �ƴϰ�, ���� ��ġ�� �̸��� �����Ѵ�. �̸� ���̺귯��(library)��� �θ���.*/
/* WORK ���̺귯���� �ӽ� ������̴�. ���̺귯���� ������, ��ǻ�͸� ���� ���� �޸𸮿��� �����ȴ�. �� ���� ���̺귯���� �������ְ� �ű⿡ �����ؾ� ����� �ʴ´�.*/
/* ����, ���̺귯���� WORK�� ��쿡�� �����͸� �տ� ���̺귯�� ���� �ٿ����� �ʾƵ� �ȴ�.*/
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
/* LIBNAME: ���̺귯���� �����ϴ� Ű����*/ 
LIBNAME AAA 'C:\Users\USER\Desktop';
DATA EXAM1203;
SET AAA.SCORE;
RUN;
/* input�� ��� ������ ������ �� �ʿ� ���� �� �� ���ǰ� �Ϸ�Ǿ��ٸ� �̷������� �ϸ� �ȴ�.*/
PROC MEANS DATA=EXAM1203;
RUN;
/* work ���̺귯���� ��ġ�� ����� ���� �ȴ�.*/
LIBNAME AAA 'C:\Users\USER\Desktop';
