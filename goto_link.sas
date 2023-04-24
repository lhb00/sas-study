/* goto/link의 공통점 : 실행문의 위치를 바꿔줌*/
/* 차이점: GOTO문: RETURN 만날 시 data step의 처음으로 감. LINK문: LINK문에 의하여 위치가 바뀐 후 RETURN을 만나면 LINK문 바로 다음문장을 간다.*/
DATA division;
	INPUT X Y;
	IF Y = 0 THEN GOTO noway; /* noway :  장소를 나타내며, 실행문이 아니라 장소를 나타내는 역할만 함.*/
	/* 만족 시 noway로 이동, z는 결측치*/
	Z = X / Y;
	noway: /* noway 뒤에는 ;(semicolon)이 아니라 :(colon)이 오는 것에 유의 => 문장 끝에 ;(semicolon)이 오지 않는 대표적 예외 중 하나*/
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
	RETURN; /* 기본적으로  RETURN문을 만나면 DATA STEP의 첫 번째 단계로 돌아간다. 즉, Q는 결측치가 된다.*/
	noway:
	Q = X + Y;
	CARDS;
	1 2
	2 0
	2 1
	;
RUN; 
PROC PRINT; RUN;

/* 사실 모든 data step에는 link문이 있다. => cards문 바로 위에! 따라서 cards문 바로 위에는 link문을 작성하건 작성하지 않건 똑같은 결과를 가진다.*/
/* 즉 cards문 바로 위에서 return이 발생한다.*/
DATA division;
		INPUT X Y;
		IF Y = 0 THEN LINK modify; /* 1. LINK문은 RETURN문과 항상 함께한다. 2. LINK문에 의하여 위치가 바뀐 후 RETURN을 만나면 LINK문 바로 다음문장을 간다.*/
		Z = X  / Y; C = 'OK';
		RETURN;
		modify : X = X + 1 ; Y = Y + 1;
		RETURN; /* 위의 내용에 따라 return문이 없어도 실행 결과는 똑같으나 return문을 사용해 주는 것이 논리 구조 상 바람직하다.*/

		CARDS;
		1 2
		2 0
		2 1
		;
RUN; PROC PRINT; RUN;
