/* goto/link�� ������ : ���๮�� ��ġ�� �ٲ���*/
/* ������: GOTO��: RETURN ���� �� data step�� ó������ ��. LINK��: LINK���� ���Ͽ� ��ġ�� �ٲ� �� RETURN�� ������ LINK�� �ٷ� ���������� ����.*/
DATA division;
	INPUT X Y;
	IF Y = 0 THEN GOTO noway; /* noway :  ��Ҹ� ��Ÿ����, ���๮�� �ƴ϶� ��Ҹ� ��Ÿ���� ���Ҹ� ��.*/
	/* ���� �� noway�� �̵�, z�� ����ġ*/
	Z = X / Y;
	noway: /* noway �ڿ��� ;(semicolon)�� �ƴ϶� :(colon)�� ���� �Ϳ� ���� => ���� ���� ;(semicolon)�� ���� �ʴ� ��ǥ�� ���� �� �ϳ�*/
	Q = X + Y;
CARDS;
1 2
2 0
2 1
;
RUN; PROC PRINT; RUN;

DATA division;
	INPUT X Y;
	IF Y = 0 THEN GOTO noway;
	Z = X / Y;
	RETURN; /* �⺻������  RETURN���� ������ DATA STEP�� ù ��° �ܰ�� ���ư���. ��, Q�� ����ġ�� �ȴ�.*/
	noway:
	Q = X + Y;
	CARDS;
	1 2
	2 0
	2 1
	;
RUN; 
PROC PRINT; RUN;

/* ��� ��� data step���� link���� �ִ�. => cards�� �ٷ� ����! ���� cards�� �ٷ� ������ link���� �ۼ��ϰ� �ۼ����� �ʰ� �Ȱ��� ����� ������.*/
/* �� cards�� �ٷ� ������ return�� �߻��Ѵ�.*/
DATA division;
		INPUT X Y;
		IF Y = 0 THEN LINK modify; /* 1. LINK���� RETURN���� �׻� �Բ��Ѵ�. 2. LINK���� ���Ͽ� ��ġ�� �ٲ� �� RETURN�� ������ LINK�� �ٷ� ���������� ����.*/
		Z = X  / Y; C = 'OK';
		RETURN;
		modify : X = X + 1 ; Y = Y + 1;
		RETURN; /* ���� ���뿡 ���� return���� ��� ���� ����� �Ȱ����� return���� ����� �ִ� ���� �� ���� �� �ٶ����ϴ�.*/

		CARDS;
		1 2
		2 0
		2 1
		;
RUN; PROC PRINT; RUN;
