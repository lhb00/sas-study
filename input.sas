/* pointer control�� ���� 3���� input�� ����ϴ� ����̶�� �����ϸ� �ȴ�.*/
data one;
input name $ age; /* input������ �� �ʿ��� ���: 1. ������ �̸� 2. ������ ���� 3. ������ ����(������ �������� �� ������)*/
/* �̸� �˷��ִ� ����� 3������ �ִ�. $ǥ�ð� �ڿ� ������� ������, ������ �������̴�. ��ĭ�� ��Ÿ���� �� ���� ������ ������ �̵��Ѵ�.(��ĭ���� ����)*/
/* sas���� ����ġ�� �������� ó���ϸ� ����� ����� ������ ����� �ȴ�. ���� ������ �ƴ϶� ��ħǥ�� ������ �Ѵ�.*/
cards;
s.yoon 28
h.sim 29
d.kim 28
;
run;
proc print;
run;
data two;
input name $ & age; /* &�� �ǹ�: ������ �������� �߰��� ������ �ִٰ� �ϴ��� ���� ������ �Ѿ�� �ʴ´�. ���� ���� ������ �ѱ����, �����Ϳ� ������ ���̿� ��ĭ�� 2�� �־�����Ѵ�.*/
cards;
s. yoon  28
h. sim  29
d. kim  28
;
run;
proc print;
run;
data three;
input name$; /* ��Ģ ���� �Ұ����� ���ڷ� ��� �޴´�. �׷��� ���� ������ �ƴ϶� ���� �����̴�.*/
cards;
1
2
;
run; proc print; run;
data four;
input name; /* ������ ���� �ڸ��� ���ڸ� �־������ ����ġ�� ó���ȴ�.*/
cards;
a
b
;
run; proc print; run;
/* list input: ���ϱ� ������ ���鿡 ������ �ΰ��ϱ� ������ ������ ����̴�.*/
/* ����1-����2; ������-����*/
/* �ѱ��� �� ���� �� 2����Ʈ�� ó���ϱ� ������ �Ʒ��� ��� 5���ڱ��� ����*/
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
/* ���� �̸� ������ �ʿ� ���� �÷��� �Ʒ�ó�� �������� �ʾƵ� �ȴ�.*/
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
/*.2: �Ҽ��� ��°�ڸ����� ǥ���� ���� ������ �ض�*/
data ip4;
input number 11-15 .2;
cards;
kimsungill399658
parkseri 283746
kimmihun 938726
;
run;
proc print;run;
/*�տ� in�� �پ��ִ� ��ɾ��: ����� �Ȱ����� in�� �پ� ������ �����͸� �ҷ����� ��, ������ �����͸� ������ �� ����Ѵٰ� �����ϸ� �ȴ�.*/
data ip1;
input (score1-score5) (4. 4. 4. 4. 4.); /* format ����� Ư¡: �Ҽ����� �ݵ�� �����Ѵ�.(���̰� ������ ����)*/
cards;
39900014291928374652
28374659864590002080
;
run;
proc print;
run;
data ip2;
input (score1-score5) (4.); /* �հ� ���� �ǹ�*/
cards;
39900014291928374652
28374659864590002080
;
run;
proc print;
run;
data ip3;
input (a b) ($5.); /*������ �����̹Ƿ� $�� �ְ� ���ڸ� ������ �ȴ�. 5��° ���� �������� 2���� ������ ��������.*/
cards;
kimsshighs
parkjunive
;
run;
proc print;
run;
data ip4;
input (name score1-score5) ($10. 5*4.); /*4�ڸ��� �о�鿩 5���� ������ ������. ������ ������ ��� ��ĭ�� ����ġ�� �����ȴ�.*/
cards;
kimsungill39900014291928374652
parkseri  28374659864590002080
kimmihun 93872635533400001822
; run; proc print; run;
data one;
input a $5.; /* a $char5. �� ���� ��� */
cards;
abcde
 abcde
ab cde
ab  cde
;
run;
/* ������ ������ ù ��ĭ�� �����ϰ� �о���δ�. �� ���� ��ĭ�� �� ���� �����ϰ� �о���δ�.*/
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
input @15 sales 5. ; /* @: �����͸� �о���� �� �������� �ű� �� �ִ�. �� �����͸� 15��° ĭ���� �о���̶�� ���̴�.*/
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
/* 3���� ��� ȥ�� ����*/
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
/* #: �ϳ��� �������� �� �ٲ��� �Ͽ� ������ �ÿ� �̿��ϴ� ��ȣ*/
run;
proc print;
run;
data ip5;
/* #�� �̿��ؼ� ���� �̵��� �� 2->3��° ó�� �� ���������� �� �ʿ䰡 ����*/
/* #3�� �ְ� ���� �Ȱ��� �۵��Ѵ�. �׷� ���� ������? ������������ 3��° �ٷ� �̵����� �ʰ� 2��° �ٿ��� ������, 3��° �ٺ��� �����͸� �о������. �׷��� ���� ���̰�, ���� ���������� ���� �Ǳ��Ѵ�. ������ �ִ°� ����.*/
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
input name$ age @@; /*@@�� �������� lee���� �ٷ� jun���� �Ѿ��. ��, @@�� �ǹ̴� �� �ٿ� ���� ���� ���̽��� �������� �̾����ٴ� ���� �˷��ִ� �ǹ̴�.*/
cards;
lee 33 park 22 kim 25
jun 16 seo 22 yoon 17
;
run;
proc print;
run;
data ip7;
/* �ܵ����� �ִ� @�� �ǹ�: �Ͻ�����*/
input status $ 1 @;
		if status="p" then input course $ profname $ 12-32;
else if status="s" then input course $ id name $ 19-39;
cards;
p stat1111 S.G.LEE
s stat1111 952210 Honggildong
;
/* list input���� �ϸ� �ִ� 8���ڱ����� �Է��� �����ϱ� ������ ȫ�浿�� �̸��� �߷��� ���´�. ���� ������ column input���� ����� �Ѵ�.*/
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
/* +����=> reading point�� ���ڸ�ŭ �ڷ� �Ű��ش�. '-'�� �ȵȴ�.*/
proc print;run;

