/* put/file/set���� ��Ʈ��. */
/* put�� ������ ������ �߰� �ܰ迡�� �ʿ��� �������� ����Ʈ�ϴµ� �����.(proc print�� ���� ���� ������ �����ؼ� ����Ʈ�ϴ� ���� �ƴ�.)*/
/* put������ �����Ͱ� ��µǴ� ��Ҵ� �α�â�̴�, �ٸ� ���� ã�ƺ��鼭 ����� ����. ���� ���浵 �����ϴ�.*/
/* put���� ��ġ�� �ݵ�� cards���� �ٷ� ���� �;��Ѵ�. input���� ���� �� ������ �ν��Ѵ�.*/
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
put x 8.4; /* 8: 123.4500�� 8ĭ, .4: �Ҽ� 4°�ڸ�����*/
run;
data ex2; x = "  korea";
put x $5.; /* $5. ���ʿ������� 5ĭ �μ� => "  kor" �μ��.*/
run;
data ex3; x = 12345600;
put x best6.; /* ������ 6ĭ���� ǥ��, ������ �� �����Ϳ� �ִ��� ����� ������*/
put x best3.;
put x best2.;
run;