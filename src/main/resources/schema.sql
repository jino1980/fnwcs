DROP TABLE IF EXISTS Products;

CREATE TABLE Products
(
    prod_id     IDENTITY        PRIMARY KEY,
    prod_name   VARCHAR(255)    NOT NULL,
    prod_price  INT             NOT NULL
);



use FN_WCS_DB;

select CONCAT( 'DROP TABLE ',TABLE_NAME,';') AS SCPT
from INFORMATION_SCHEMA.TABLES 
order by table_name;


DROP TABLE DB_COM_CFG;
DROP TABLE DB_COM_CODE;
DROP TABLE DB_COM_EQUCOM;
DROP TABLE DB_COM_MNUMST;
DROP TABLE DB_COM_USRAUT;
DROP TABLE DB_COM_USRMST;
DROP TABLE DB_CRC_JOBMST;
DROP TABLE DB_STO_STODTL;
DROP TABLE DB_STO_STOMST;
DROP TABLE DB_SYS_CLCHST;
DROP TABLE DB_SYS_ERRLOG;
DROP TABLE DB_SYS_JOBHST;
DROP TABLE DB_SYS_JOBMST;
DROP TABLE DB_SYS_SYSLOG;
DROP TABLE IF_WCS_01;
DROP TABLE IF_WCS_02;
DROP TABLE IF_WCS_10;
DROP TABLE IF_WCS_11;
DROP TABLE IF_WCS_12;
DROP TABLE IF_WCS_14;
DROP TABLE IF_WCS_15;
DROP TABLE IF_WCS_16;

--[자재 마스터 정보]
--DROP TABLE IF_WCS_01;

CREATE TABLE IF_WCS_01
(
	OWNRKY		VARCHAR(20)	NOT NULL,
	SKUKEY		VARCHAR(20)	NOT NULL,
	DESC01		VARCHAR(300)	NULL,
	DESC02		VARCHAR(300)	NULL,
	BARCOD		VARCHAR(30)		NULL,
	WEIGHT		NUMERIC(20,0)	NULL,
	LENGTH		NUMERIC(20,0)	NULL,
	WIDTHW		NUMERIC(20,0)	NULL,
	HEIGHT		NUMERIC(20,0)	NULL,
	BXIPSU		NUMERIC(20,0)	NULL,
	PLIPSU		NUMERIC(20,0)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	REMARKS		VARCHAR(500)	NULL
);

	
ALTER TABLE IF_WCS_01
	ADD CONSTRAINT  PK_IF_WCS_01 PRIMARY KEY (OWNRKY, SKUKEY );

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '자재 마스터 정보', 'USER', DBO, 'TABLE', IF_WCS_01 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '화주', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', OWNRKY	;
EXEC sp_addextendedproperty 'MS_Description', '자재코드', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', SKUKEY	;
EXEC sp_addextendedproperty 'MS_Description', '자재명', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', DESC01	;
EXEC sp_addextendedproperty 'MS_Description', '규격', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', DESC02	;
EXEC sp_addextendedproperty 'MS_Description', '바코드', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', BARCOD	;
EXEC sp_addextendedproperty 'MS_Description', '무게(중량)', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', WEIGHT	;
EXEC sp_addextendedproperty 'MS_Description', '자재용적(가로)', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', LENGTH	;
EXEC sp_addextendedproperty 'MS_Description', '자재용적(세로)', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', WIDTHW	;
EXEC sp_addextendedproperty 'MS_Description', '자재용적(높이)', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', HEIGHT	;
EXEC sp_addextendedproperty 'MS_Description', '박스입수량', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', BXIPSU	;
EXEC sp_addextendedproperty 'MS_Description', '팔레트입수량', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', PLIPSU	;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', CREUSR	;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', IF_WCS_01, 'COLUMN', REMARKS;


--------------------------------------------------------------------------------------------------------------
--[로케이션 마스터]
--DROP TABLE IF_WCS_02;

CREATE TABLE IF_WCS_02
(
	LOCAKY		VARCHAR(20)	NOT NULL,
	STATUS		VARCHAR(1)	NULL,
	EQUPTY		VARCHAR(1)	NULL,
	LENGTH		NUMERIC(20,0)	NULL,
	WIDTHW		NUMERIC(20,0)	NULL,
	HEIGHT		NUMERIC(20,0)	NULL,
	WEIGHT		NUMERIC(20,0)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	REMARKS		VARCHAR(500)	NULL
);

	
ALTER TABLE IF_WCS_02
	ADD CONSTRAINT  PK_IF_WCS_02 PRIMARY KEY (LOCAKY);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '로케이션 마스터', 'USER', DBO, 'TABLE', IF_WCS_02 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '로케이션코드', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', LOCAKY	;
EXEC sp_addextendedproperty 'MS_Description', '로케이션상태', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', STATUS	;
EXEC sp_addextendedproperty 'MS_Description', '설비유형', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', EQUPTY	;
EXEC sp_addextendedproperty 'MS_Description', '가로', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', LENGTH	;
EXEC sp_addextendedproperty 'MS_Description', '세로', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', WIDTHW	;
EXEC sp_addextendedproperty 'MS_Description', '높이', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', HEIGHT	;
EXEC sp_addextendedproperty 'MS_Description', '중량', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', WEIGHT	;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', CREUSR	;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', IF_WCS_02, 'COLUMN', REMARKS;


--------------------------------------------------------------------------------------------------------------
--[피킹지시]
--DROP TABLE IF_WCS_10;

CREATE TABLE IF_WCS_10
(
	INVCNO		VARCHAR(30)	NOT NULL,
	LOCASR		VARCHAR(20)	NOT NULL,
	SHPDAT		VARCHAR(10)	NULL,
	STKNUM		VARCHAR(10)	NULL,
	STKSEQ		NUMERIC(2,0)	NULL,
	TMLCD		VARCHAR(10)	NULL,
	TMLNM		VARCHAR(10)	NULL,
	CITYGUNGU		VARCHAR(20)	NULL,
	DONG		VARCHAR(20)	NULL,
	FILTCD		VARCHAR(10)	NULL,
	BRNSHPNM		VARCHAR(50)	NULL,
	ORDNO		VARCHAR(50)	NULL,
	INVNO		VARCHAR(30)	NULL,
	SNPERNM		VARCHAR(50)	NULL,
	SNPERTEL		VARCHAR(50)	NULL,
	SNPERCPNO		VARCHAR(50)	NULL,
	SNPERZIPCD		VARCHAR(10)	NULL,
	SNPERADR		VARCHAR(200)	NULL,
	SNPERADRDETAIL		VARCHAR(200)	NULL,
	ACPERNM		VARCHAR(50)	NULL,
	ACPERTEL		VARCHAR(50)	NULL,
	ACPERCPNO		VARCHAR(50)	NULL,
	ACPERZIPCD		VARCHAR(10)	NULL,
	ACPERADR		VARCHAR(200)	NULL,
	ACPERADRDETAIL		VARCHAR(200)	NULL,
	GDSNM		VARCHAR(200)	NULL,
	DLVMSGCONT		VARCHAR(100)	NULL,
	FARESCTCD		VARCHAR(10)	NULL,
	DLVFARE		NUMERIC(20,0)	NULL,
	TOTCNT		NUMERIC(20,0)	NULL,
	CCPNM		VARCHAR(50)	NULL,
	CCPTEL		VARCHAR(50)	NULL,
	DLCNT		VARCHAR(10)	NULL,
	USTRTGSCTCD		VARCHAR(10)	NULL,
	ORDSCT		VARCHAR(10)	NULL,
	SHPOKY		VARCHAR(10)	NULL,
	SHPOIT		VARCHAR(6)	NULL,
	OWNRKY		VARCHAR(20)	NULL,
	SKUKEY		VARCHAR(20)	NULL,
	CTNTYP		VARCHAR(1)	NULL,
	QTTAOR		NUMERIC(20,0)	NULL,
	QTCOMP		NUMERIC(20,0)	NULL,
	QTTRS		NUMERIC(20,0)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	TRSFLG		VARCHAR(1)	NULL,
	TRSDATE		DATETIME	NULL,
	REMARKS		VARCHAR(500)	NULL,
	JOB_NO		VARCHAR(4)	NULL,
	WK_STS		VARCHAR(2)	NULL,
	BCR_POS		VARCHAR(2)	NULL,
	SKU_WEIGHT		NUMERIC(20,0)	NULL,
	LABEL_STS		VARCHAR(2)	NULL,
	TEST_STS		VARCHAR(2)	NULL,
	QTY_MODIFY		VARCHAR(2)	NULL,
	TEST_DATE		DATETIME	NULL,
	TEST_USER		VARCHAR(20)	NULL,
	CHNTYP		VARCHAR(1)	NULL,
    CHNCTN		VARCHAR(1)	NULL,
	MODIFY_DTM	DATETIME	NULL,
	MODIFY_USER	VARCHAR(20)	NULL,
	INVNO_CNT	NUMERIC(3,0)	NULL
);

	
ALTER TABLE IF_WCS_10
	ADD CONSTRAINT  PK_IF_WCS_10 PRIMARY KEY (INVCNO,LOCASR);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '피킹지시', 'USER', DBO, 'TABLE', IF_WCS_10 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '송장번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', INVCNO	;
EXEC sp_addextendedproperty 'MS_Description', '박스유형', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CTNTYP	;
EXEC sp_addextendedproperty 'MS_Description', '출고일자', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SHPDAT	;
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', STKNUM	;
EXEC sp_addextendedproperty 'MS_Description', '작업차수', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', STKSEQ	;
EXEC sp_addextendedproperty 'MS_Description', '터미널코드', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TMLCD	;
EXEC sp_addextendedproperty 'MS_Description', '터미널명', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TMLNM	;
EXEC sp_addextendedproperty 'MS_Description', '시군구', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CITYGUNGU	;
EXEC sp_addextendedproperty 'MS_Description', '동', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', DONG	;
EXEC sp_addextendedproperty 'MS_Description', '도착지코드', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', FILTCD	;
EXEC sp_addextendedproperty 'MS_Description', '배달영업소', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', BRNSHPNM	;
EXEC sp_addextendedproperty 'MS_Description', '주문번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ORDNO	;
EXEC sp_addextendedproperty 'MS_Description', '운송장번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', INVNO	;
EXEC sp_addextendedproperty 'MS_Description', '송하인명', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERNM	;
EXEC sp_addextendedproperty 'MS_Description', '송하인전화', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERTEL	;
EXEC sp_addextendedproperty 'MS_Description', '송하인휴대', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERCPNO	;
EXEC sp_addextendedproperty 'MS_Description', '송하인우편', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERZIPCD	;
EXEC sp_addextendedproperty 'MS_Description', '송하인 기본', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERADR	;
EXEC sp_addextendedproperty 'MS_Description', '송하인 상세', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SNPERADRDETAIL	;
EXEC sp_addextendedproperty 'MS_Description', '수하인명', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERNM	;
EXEC sp_addextendedproperty 'MS_Description', '수하인전화', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERTEL	;
EXEC sp_addextendedproperty 'MS_Description', '수하인휴대', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERCPNO	;
EXEC sp_addextendedproperty 'MS_Description', '수하인우편', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERZIPCD	;
EXEC sp_addextendedproperty 'MS_Description', '수하인 기본', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERADR	;
EXEC sp_addextendedproperty 'MS_Description', '수하인 상세', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ACPERADRDETAIL	;
EXEC sp_addextendedproperty 'MS_Description', '상품명', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', GDSNM	;
EXEC sp_addextendedproperty 'MS_Description', '배달메세지', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', DLVMSGCONT	;
EXEC sp_addextendedproperty 'MS_Description', '운임구분', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', FARESCTCD	;
EXEC sp_addextendedproperty 'MS_Description', '착불택배비', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', DLVFARE	;
EXEC sp_addextendedproperty 'MS_Description', '상품 총수량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TOTCNT	;
EXEC sp_addextendedproperty 'MS_Description', '집하점', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CCPNM	;
EXEC sp_addextendedproperty 'MS_Description', '집하점 연락', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CCPTEL	;
EXEC sp_addextendedproperty 'MS_Description', '운임수량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', DLCNT	;
EXEC sp_addextendedproperty 'MS_Description', '출고반품구', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', USTRTGSCTCD	;
EXEC sp_addextendedproperty 'MS_Description', '오더구분', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', ORDSCT	;
EXEC sp_addextendedproperty 'MS_Description', '출고문서번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SHPOKY	;
EXEC sp_addextendedproperty 'MS_Description', '출고문서아이템번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SHPOIT	;
EXEC sp_addextendedproperty 'MS_Description', '화주코드', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', OWNRKY	;
EXEC sp_addextendedproperty 'MS_Description', '자재코드', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SKUKEY	;
EXEC sp_addextendedproperty 'MS_Description', '로케이션', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', LOCASR	;
EXEC sp_addextendedproperty 'MS_Description', '피킹지시수량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', QTTAOR	;
EXEC sp_addextendedproperty 'MS_Description', '출고 완료 수량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', QTCOMP	;
EXEC sp_addextendedproperty 'MS_Description', '출고 전송 수량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', QTTRS	;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CREDATE	;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CREUSR		;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리상태', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TRSFLG	;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리시간', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TRSDATE	;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', REMARKS	;
EXEC sp_addextendedproperty 'MS_Description', '작업번호', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', JOB_NO	;
EXEC sp_addextendedproperty 'MS_Description', '처리상태', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', WK_STS	;
EXEC sp_addextendedproperty 'MS_Description', 'BCR_위치', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', BCR_POS	;
EXEC sp_addextendedproperty 'MS_Description', '제품 중량', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', SKU_WEIGHT	;
EXEC sp_addextendedproperty 'MS_Description', '라벨출력 유무', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', LABEL_STS	;
EXEC sp_addextendedproperty 'MS_Description', '검수유무', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TEST_STS	;
EXEC sp_addextendedproperty 'MS_Description', '수동보완', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', QTY_MODIFY	;
EXEC sp_addextendedproperty 'MS_Description', '검수완료일시', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TEST_DATE	;
EXEC sp_addextendedproperty 'MS_Description', '검수자', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', TEST_USER	;
EXEC sp_addextendedproperty 'MS_Description', 'BOX변경유', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CHNTYP	;
EXEC sp_addextendedproperty 'MS_Description', 'BOX변경후', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', CHNCTN	;
EXEC sp_addextendedproperty 'MS_Description', '수동 보완일자', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', MODIFY_DTM	;
EXEC sp_addextendedproperty 'MS_Description', '수동 보완자', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', MODIFY_USER	;
EXEC sp_addextendedproperty 'MS_Description', '운송장발행횟수', 'USER', DBO, 'TABLE', IF_WCS_10, 'COLUMN', INVNO_CNT	;
	
	
--------------------------------------------------------------------------------------------------------------
--[피킹완료]
--DROP TABLE IF_WCS_11;

CREATE TABLE IF_WCS_11
(
	INVCNO		VARCHAR(30)	NOT NULL,
	LOCASR		VARCHAR(20)	NOT NULL,
	SHPDAT		VARCHAR(8)	NULL,
	STKNUM		VARCHAR(10)	NULL,
	STKSEQ		NUMERIC(2,0)	NULL,
	SHPOKY		VARCHAR(10)	NULL,
	SHPOIT		VARCHAR(6)	NULL,
	OWNRKY		VARCHAR(20)	NULL,
	SKUKEY		VARCHAR(20)	NULL,
	CTNTYP		VARCHAR(1)	NULL,
	QTTAOR		NUMERIC(20,0)	NULL,
	QTCOMP		NUMERIC(20,0)	NULL,
	QTTRS		NUMERIC(20,0)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	CMPFLG		VARCHAR(1)	NULL,
	CMPDAT		VARCHAR(14) NULL,
	REMARKS		VARCHAR(500)	NULL
);

	
ALTER TABLE IF_WCS_11
	ADD CONSTRAINT  PK_IF_WCS_11 PRIMARY KEY (INVCNO, LOCASR);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '피킹완료', 'USER', DBO, 'TABLE', IF_WCS_11 ;

--column comment 
EXEC sp_addextendedproperty 'MS_Description', '송장번호', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', INVCNO	;
EXEC sp_addextendedproperty 'MS_Description', '박스유형', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', CTNTYP	;
EXEC sp_addextendedproperty 'MS_Description', '출고일자', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', SHPDAT	;
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', STKNUM	;
EXEC sp_addextendedproperty 'MS_Description', '작업차수', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', STKSEQ	;
EXEC sp_addextendedproperty 'MS_Description', '출고문서번호', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', SHPOKY	;
EXEC sp_addextendedproperty 'MS_Description', '출고문서아이템번호', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', SHPOIT	;
EXEC sp_addextendedproperty 'MS_Description', '화주코드', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', OWNRKY	;
EXEC sp_addextendedproperty 'MS_Description', '자재코드', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', SKUKEY	;
EXEC sp_addextendedproperty 'MS_Description', '로케이션', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', LOCASR	;
EXEC sp_addextendedproperty 'MS_Description', '피킹지시수량', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', QTTAOR	;
EXEC sp_addextendedproperty 'MS_Description', '피킹완료수량', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', QTCOMP	;
EXEC sp_addextendedproperty 'MS_Description', '피킹전송수량', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', QTTRS	;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', CREUSR	;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리상태', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', CMPFLG	;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리시간', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', CMPDAT;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', IF_WCS_11, 'COLUMN', REMARKS;


--------------------------------------------------------------------------------------------------------------
--[출고]
--DROP TABLE IF_WCS_12;

CREATE TABLE IF_WCS_12
(
	INVCNO		VARCHAR(30)	NOT NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	CMPFLG		VARCHAR(1)	NULL,
	CMPDATE		DATETIME	NULL,
	CMPMSG		VARCHAR(2000)	NULL
);

	
ALTER TABLE IF_WCS_12
	ADD CONSTRAINT  PK_IF_WCS_12 PRIMARY KEY (INVCNO);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '출고', 'USER', DBO, 'TABLE', IF_WCS_12 ;

--column comment 
EXEC sp_addextendedproperty 'MS_Description', '송장번호', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', INVCNO;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', CREUSR;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리상태', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', CMPFLG;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리일시', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', CMPDATE;
EXEC sp_addextendedproperty 'MS_Description', 'IF 결과 Message', 'USER', DBO, 'TABLE', IF_WCS_12, 'COLUMN', CMPMSG;



--------------------------------------------------------------------------------------------------------------

--[캐로셀 입,출고 실적]
--DROP TABLE DB_SYS_CLCHST;

CREATE TABLE DB_SYS_CLCHST
(
	HST_DTM			DATETIME NOT NULL ,
	TASKKY			VARCHAR(10) NOT NULL ,
	SKUKEY			VARCHAR(20) NOT NULL ,
	OWNRKY			VARCHAR(20) NULL ,
	DESC01			VARCHAR(300) NULL ,
	LOCASR			VARCHAR(20) NULL ,
	LOCATG			VARCHAR(20) NULL ,
	QTTAOR			NUMERIC(20,0) NULL ,
	QTCOMP			NUMERIC(20,0) NULL ,
	CMD_DIV			VARCHAR(2) NULL 
);

	
ALTER TABLE DB_SYS_CLCHST
	ADD CONSTRAINT  PK_DB_SYS_CLCHST PRIMARY KEY (HST_DTM, TASKKY, SKUKEY);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '캐로셀 입,출고 실적', 'USER', DBO, 'TABLE', DB_SYS_CLCHST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '실행일자', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', HST_DTM;
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', TASKKY;
EXEC sp_addextendedproperty 'MS_Description', '제품코드', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', SKUKEY;
EXEC sp_addextendedproperty 'MS_Description', '화주', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', OWNRKY;
EXEC sp_addextendedproperty 'MS_Description', '제품명', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', DESC01;
EXEC sp_addextendedproperty 'MS_Description', 'FROM 로케이션', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', LOCASR;
EXEC sp_addextendedproperty 'MS_Description', 'TO 로케이션', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', LOCATG;
EXEC sp_addextendedproperty 'MS_Description', '지시수량', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', QTTAOR;
EXEC sp_addextendedproperty 'MS_Description', '완료수량', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', QTCOMP;
EXEC sp_addextendedproperty 'MS_Description', '입,출 구분', 'USER', DBO, 'TABLE', DB_SYS_CLCHST, 'COLUMN', CMD_DIV;


--------------------------------------------------------------------------------------------------------------

--[캐로셀 상태 정보]
--DROP TABLE IF_WCS_14;

CREATE TABLE IF_WCS_14
(
    LOCAKY		VARCHAR(10)	NOT NULL,
	CRSMOD		VARCHAR(1)	NULL,
	CRSSTS		VARCHAR(1)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	CMPFLG		VARCHAR(1)	NULL,
	CMPDATE		DATETIME	NULL,
	CMPMSG		VARCHAR(2000)	NULL
);

	
ALTER TABLE IF_WCS_14
	ADD CONSTRAINT  PK_IF_WCS_14 PRIMARY KEY (LOCAKY);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '캐로셀 상태 정보', 'USER', DBO, 'TABLE', IF_WCS_14 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '호기', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', LOCAKY;
EXEC sp_addextendedproperty 'MS_Description', '모드', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CRSMOD;
EXEC sp_addextendedproperty 'MS_Description', '상태', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CRSSTS;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CREUSR;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리상태', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CMPFLG;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리일시', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CMPDATE;
EXEC sp_addextendedproperty 'MS_Description', 'IF 결과 Message', 'USER', DBO, 'TABLE', IF_WCS_14, 'COLUMN', CMPMSG;


--------------------------------------------------------------------------------------------------------------
--[보충 지시]
--DROP TABLE IF_WCS_15;

CREATE TABLE IF_WCS_15
(
	TASKKY		VARCHAR(10)	NOT NULL,
	TASKIT		VARCHAR(6)	NOT NULL,
	TASKTY		VARCHAR(1)	NULL,
	OWNRKY		VARCHAR(20)	NULL,
	SKUKEY		VARCHAR(20)	NULL,
	LOCAFR		VARCHAR(20)	NULL,
	LOCATO		VARCHAR(20)	NULL,
	QTTAOR		NUMERIC(20,0)	NULL,
	QTCOMP      NUMERIC(20,0)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	QTYCMP		NUMERIC(20,0)	NULL,
	WK_STS		VARCHAR(2)	NULL
);
	
ALTER TABLE IF_WCS_15
	ADD CONSTRAINT  PK_IF_WCS_15 PRIMARY KEY (TASKKY, TASKIT);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '보충 지시', 'USER', DBO, 'TABLE', IF_WCS_15 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', TASKKY;
EXEC sp_addextendedproperty 'MS_Description', '작업지시아이템번호', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', TASKIT;
EXEC sp_addextendedproperty 'MS_Description', '지시유형', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', TASKTY;
EXEC sp_addextendedproperty 'MS_Description', '화주코드', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', OWNRKY;
EXEC sp_addextendedproperty 'MS_Description', '자재코드', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', SKUKEY;
EXEC sp_addextendedproperty 'MS_Description', 'FROM 로케이션', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', LOCAFR;
EXEC sp_addextendedproperty 'MS_Description', 'TO 로케이션', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', LOCATO;
EXEC sp_addextendedproperty 'MS_Description', '보충지시 수량', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', QTTAOR;
EXEC sp_addextendedproperty 'MS_Description', '보충완료 수량', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', QTCOMP;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', CREUSR;
EXEC sp_addextendedproperty 'MS_Description', '완료 수량 ', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', QTYCMP;
EXEC sp_addextendedproperty 'MS_Description', '처리상태', 'USER', DBO, 'TABLE', IF_WCS_15, 'COLUMN', WK_STS;


--------------------------------------------------------------------------------------------------------------
--[보충 지시 완료]
--DROP TABLE IF_WCS_16;

CREATE TABLE IF_WCS_16
(
	TASKKY		VARCHAR(10)	NOT NULL,
	TASKIT		VARCHAR(6)	NOT NULL,
	CRC_LOCT    VARCHAR(30)	NOT NULL,
	SKUKEY		VARCHAR(20)	NULL,
	DESC01		VARCHAR(6)	NULL,
	QTTAOR		NUMERIC(20,0)	NULL,
	QTCOMP		NUMERIC(20,0)	NULL,
	QTTRS		NUMERIC(20,0)	NULL,
	COMPYN 		VARCHAR(1)	NULL,
	CREDATE		DATETIME	NULL,
	CREUSR		VARCHAR(20)	NULL,
	CMPFLG		VARCHAR(1)	NULL,
	CMPDATE		DATETIME	NULL
);
	
ALTER TABLE IF_WCS_16
	ADD CONSTRAINT  PK_IF_WCS_16 PRIMARY KEY (TASKKY, TASKIT, CRC_LOCT);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '보충 지시 완료', 'USER', DBO, 'TABLE', IF_WCS_16 ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', TASKKY;
EXEC sp_addextendedproperty 'MS_Description', '작업지시아이템번호', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', TASKIT;
EXEC sp_addextendedproperty 'MS_Description', '케로셀 재고위치', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', CRC_LOCT;
EXEC sp_addextendedproperty 'MS_Description', '제품코드', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', SKUKEY;
EXEC sp_addextendedproperty 'MS_Description', '제품명', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', DESC01;
EXEC sp_addextendedproperty 'MS_Description', '보충지시 수량', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', QTTAOR;
EXEC sp_addextendedproperty 'MS_Description', '보충완료 수량', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', QTCOMP;
EXEC sp_addextendedproperty 'MS_Description', '보충전송 수량', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', QTTRS;
EXEC sp_addextendedproperty 'MS_Description', '작업최종여부 플래그', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', COMPYN;
EXEC sp_addextendedproperty 'MS_Description', '생성일시', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', CREDATE;
EXEC sp_addextendedproperty 'MS_Description', '생성자', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', CREUSR;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리상태', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', CMPFLG;
EXEC sp_addextendedproperty 'MS_Description', 'IF 처리일시', 'USER', DBO, 'TABLE', IF_WCS_16, 'COLUMN', CMPDATE;



--------------------------------------------------------------------------------------------------------------

--[작업 마스터]
--DROP TABLE DB_SYS_JOBMST;

CREATE TABLE DB_SYS_JOBMST
(
	JOB_NO				VARCHAR(4) NOT NULL , 
	SUB_JOB_NO			VARCHAR(4) NULL ,
	LANK_SEQ			VARCHAR(2) NULL ,
	CMD_DIV				VARCHAR(2) NULL ,
	JOB_STS				VARCHAR(2) NULL ,
	JOB_DTM				DATETIME NULL ,
	INV_NO				VARCHAR(30) NULL ,
	BCR_MOVE			VARCHAR(100) NULL ,
	BCR_POS				VARCHAR(4) NULL ,
	BCR_DTM				DATETIME NULL ,
	PID_NO				VARCHAR(10) NULL ,
	DPS_CNT             NUMERIC(5,0) NULL ,
	DPS_CMP_CNT         NUMERIC(5,0) NULL ,
	ERR_CD              VARCHAR(5) NULL ,
	ERR_MSG             VARCHAR(100) NULL ,
	BAR_DATA            VARCHAR(100) NULL ,
	DSP_DATA            VARCHAR(100) NULL ,
	WEIGHT 				NUMERIC(20,0)	NULL,
	REMARKS             VARCHAR(150) NULL ,
	REG_USER_ID         VARCHAR(20) NULL ,
	REG_DTM             DATETIME  NULL ,
	MOD_USER_ID         VARCHAR(20) NULL ,
	MOD_DTM             DATETIME  NULL ,
	BKCK_FG             VARCHAR(1) DEFAULT '*' NULL 
);

	
ALTER TABLE DB_SYS_JOBMST
	ADD CONSTRAINT  PK_DB_SYS_JOBMST PRIMARY KEY (JOB_NO);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '작업 마스터', 'USER', DBO, 'TABLE', DB_SYS_JOBMST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '작업번호', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '작업번호(SUB)', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', SUB_JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '우선순위', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', LANK_SEQ;
EXEC sp_addextendedproperty 'MS_Description', '작업명령', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', CMD_DIV;
EXEC sp_addextendedproperty 'MS_Description', '작업상태', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', JOB_STS;
EXEC sp_addextendedproperty 'MS_Description', '작업일시', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', JOB_DTM;
EXEC sp_addextendedproperty 'MS_Description', '송장번호', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', INV_NO;
EXEC sp_addextendedproperty 'MS_Description', 'BCR 분기', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', BCR_MOVE;
EXEC sp_addextendedproperty 'MS_Description', 'BCR 위치', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', BCR_POS;
EXEC sp_addextendedproperty 'MS_Description', 'BCR 시간', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', BCR_DTM;
EXEC sp_addextendedproperty 'MS_Description', 'PID NO', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', PID_NO;
EXEC sp_addextendedproperty 'MS_Description', 'DPS  수량', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', DPS_CNT;
EXEC sp_addextendedproperty 'MS_Description', 'DPS 완료 수량', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', DPS_CMP_CNT;
EXEC sp_addextendedproperty 'MS_Description', '이상 코드', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', ERR_CD;
EXEC sp_addextendedproperty 'MS_Description', '이상 메시지', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', ERR_MSG;
EXEC sp_addextendedproperty 'MS_Description', 'BAR DATA', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', BAR_DATA;
EXEC sp_addextendedproperty 'MS_Description', 'DISPLAY DATA', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', DSP_DATA;
EXEC sp_addextendedproperty 'MS_Description', '중량', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', WEIGHT;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_SYS_JOBMST, 'COLUMN', BKCK_FG;


--------------------------------------------------------------------------------------------------------------

--[작업 이력]
--DROP TABLE DB_SYS_JOBHST;

CREATE TABLE DB_SYS_JOBHST
(
	HST_DTM              DATETIME NOT NULL ,
	BCR_POS              VARCHAR(4) NOT NULL ,
	INV_NO               VARCHAR(30) NOT NULL ,
	BCR_MOVE             VARCHAR(100) NULL ,
	BAR_DATA             VARCHAR(100) NULL ,
	PID_NO               VARCHAR(10) NULL ,
	JOB_NO               VARCHAR(4) NULL ,
	REMARKS              VARCHAR(150) NULL ,
	REG_USER_ID          VARCHAR(20) NULL ,
	REG_DTM              DATETIME  NULL ,
	MOD_USER_ID          VARCHAR(20) NULL ,
	MOD_DTM              DATETIME  NULL 
);
	
ALTER TABLE DB_SYS_JOBHST
	ADD CONSTRAINT  PK_DB_SYS_JOBHST PRIMARY KEY (HST_DTM, BCR_POS, INV_NO );

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '작업 이력', 'USER', DBO, 'TABLE', DB_SYS_JOBHST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '이력일자', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', HST_DTM;
EXEC sp_addextendedproperty 'MS_Description', 'BCR 위치', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', BCR_POS;
EXEC sp_addextendedproperty 'MS_Description', '송장번호', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', INV_NO;
EXEC sp_addextendedproperty 'MS_Description', 'BCR 분기', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', BCR_MOVE;
EXEC sp_addextendedproperty 'MS_Description', 'BAR DATA', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', BAR_DATA;
EXEC sp_addextendedproperty 'MS_Description', 'PID NO', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', PID_NO;
EXEC sp_addextendedproperty 'MS_Description', '작업번호', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_SYS_JOBHST, 'COLUMN', MOD_DTM;

--------------------------------------------------------------------------------------------------------------

--[작업 마스터]
--DROP TABLE DB_CRC_JOBMST;

CREATE TABLE DB_CRC_JOBMST
(
	JOB_NO		VARCHAR(4)	NOT NULL,
	SUB_JOB_NO		VARCHAR(4)	NULL,
	LANK_SEQ		VARCHAR(2)	NULL,
	CMD_DIV		VARCHAR(2)	NULL,
	JOB_STS		VARCHAR(2)	NULL,
	JOB_DTM		DATETIME	NULL,
	TASKKY		VARCHAR(10)	NULL,
	TASKIT		VARCHAR(6)	NULL,
	LOCAFR		VARCHAR(20)	NULL,
	LOCATO		VARCHAR(20)	NULL,
	QTTAOR		NUMERIC(20,0)	NULL,
	QTCOMP		NUMERIC(20,0)	NULL,
	ERR_CD		VARCHAR(5)	NULL,
	ERR_MSG		VARCHAR(100)	NULL,
	BAR_DATA		VARCHAR(100)	NULL,
	DSP_DATA		VARCHAR(100)	NULL,
	REMARKS		VARCHAR(150)	NULL,
	REG_USER_ID		VARCHAR(20)	NULL,
	REG_DTM		DATETIME	NULL,
	MOD_USER_ID		VARCHAR(20)	NULL,
	MOD_DTM		DATETIME	NULL,
	BKCK_FG		VARCHAR(1)	NULL
);

	
ALTER TABLE DB_CRC_JOBMST
	ADD CONSTRAINT  PK_DB_CRC_JOBMST PRIMARY KEY (JOB_NO);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '케로셀 작업 마스터', 'USER', DBO, 'TABLE', DB_CRC_JOBMST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '작업번호', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '작업번호(SUB)', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', SUB_JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '우선순위', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', LANK_SEQ;
EXEC sp_addextendedproperty 'MS_Description', '작업명령', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', CMD_DIV;
EXEC sp_addextendedproperty 'MS_Description', '작업상태', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', JOB_STS;
EXEC sp_addextendedproperty 'MS_Description', '작업일시', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', JOB_DTM;
EXEC sp_addextendedproperty 'MS_Description', '작업지시번호', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', TASKKY;
EXEC sp_addextendedproperty 'MS_Description', '작업지시아이템번호', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', TASKIT;
EXEC sp_addextendedproperty 'MS_Description', 'FROM 로케이션', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', LOCAFR;
EXEC sp_addextendedproperty 'MS_Description', 'TO 로케이션', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', LOCATO;
EXEC sp_addextendedproperty 'MS_Description', '보충지시 수량', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', QTTAOR;
EXEC sp_addextendedproperty 'MS_Description', '보충지시 완료 ', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', QTCOMP;
EXEC sp_addextendedproperty 'MS_Description', '이상 코드', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', ERR_CD;
EXEC sp_addextendedproperty 'MS_Description', '이상 메시지', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', ERR_MSG;
EXEC sp_addextendedproperty 'MS_Description', 'BAR DATA', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', BAR_DATA;
EXEC sp_addextendedproperty 'MS_Description', 'DISPLAY DATA', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', DSP_DATA;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러그', 'USER', DBO, 'TABLE', DB_CRC_JOBMST, 'COLUMN', BKCK_FG;



--------------------------------------------------------------------------------------------------------------

--[장비 설정 마스터]
--DROP TABLE DB_COM_CFG;

CREATE TABLE DB_COM_CFG
(
	HOST_NAME               VARCHAR(30) NOT NULL ,
	HOST_IP                 VARCHAR(30) NOT NULL ,
	HOST_PORT               VARCHAR(10) NULL ,
	STON_NO                 VARCHAR(4) NULL ,
	REMARKS                 VARCHAR(100) NULL ,
	REG_USER_ID             VARCHAR(20) NULL ,
	REG_DTM                 DATETIME  NULL ,
	MOD_USER_ID             VARCHAR(20) NULL ,
	MOD_DTM                 DATETIME  NULL ,
	BKCK_FG                 VARCHAR(1) DEFAULT '*' NULL 
);

	
ALTER TABLE DB_COM_CFG
	ADD CONSTRAINT  PK_DB_COM_CFG PRIMARY KEY (HOST_NAME);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '장비 설정 마스터', 'USER', DBO, 'TABLE', DB_COM_CFG ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '장비 명', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', HOST_NAME;
EXEC sp_addextendedproperty 'MS_Description', '장비 IP', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', HOST_IP;
EXEC sp_addextendedproperty 'MS_Description', '장비 PORT', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', HOST_PORT;
EXEC sp_addextendedproperty 'MS_Description', '트랙번호', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', STON_NO;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_COM_CFG, 'COLUMN', BKCK_FG;



--------------------------------------------------------------------------------------------------------------

--[공통 코드 마스터]
--DROP TABLE DB_COM_CODE;

CREATE TABLE DB_COM_CODE
(
	CLASS_CODE               VARCHAR(30) NOT NULL ,
	COM_CODE                 VARCHAR(30) NOT NULL ,
	COM_NAME                 VARCHAR(100) NULL ,
	USE_YN                   VARCHAR(1) NULL ,
	REMARKS                  VARCHAR(100) NULL ,
	REG_USER_ID              VARCHAR(20) NULL ,
	REG_DTM                  DATETIME  NULL ,
	MOD_USER_ID              VARCHAR(20) NULL ,
	MOD_DTM                  DATETIME  NULL ,
	BKCK_FG                  VARCHAR(1) DEFAULT '*' NULL 
);

ALTER TABLE DB_COM_CODE
	ADD CONSTRAINT  PK_DB_COM_CODE PRIMARY KEY (CLASS_CODE, COM_CODE);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '공통 코드 마스터', 'USER', DBO, 'TABLE', DB_COM_CODE ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '분류 코드', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', CLASS_CODE;
EXEC sp_addextendedproperty 'MS_Description', '공통 코드', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', COM_CODE;
EXEC sp_addextendedproperty 'MS_Description', '코드 명', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', COM_NAME;
EXEC sp_addextendedproperty 'MS_Description', '사용 유무', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', USE_YN;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_COM_CODE, 'COLUMN', BKCK_FG;

--------------------------------------------------------------------------------------------------------------
--[공통 장비 상태 관리]
--DROP TABLE DB_COM_EQUCOM;

CREATE TABLE DB_COM_EQUCOM
(
	EQU_COM_EQUIP		VARCHAR(20) NOT NULL , 
	EQU_COM_EQNO		VARCHAR(20) NOT NULL ,
	EQU_COM_KIND		VARCHAR(20) NOT NULL ,
	EQU_COM_DATE		DATETIME NULL ,
	EQU_COM_DATA		VARCHAR(MAX) NULL ,
	REG_USER_ID         VARCHAR(20) NULL ,
	REG_DTM             DATETIME NULL ,
	MOD_USER_ID         VARCHAR(20) NULL ,
	MOD_DTM             DATETIME NULL ,
	BKCK_FG             VARCHAR(1) DEFAULT '*' NULL 
);
	
ALTER TABLE DB_COM_EQUCOM
	ADD CONSTRAINT  PK_DB_COM_EQUCOM PRIMARY KEY (EQU_COM_EQUIP, EQU_COM_EQNO, EQU_COM_KIND);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '공통 장비 상태 관리', 'USER', DBO, 'TABLE', DB_COM_EQUCOM ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '장비 구분', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', EQU_COM_EQUIP;
EXEC sp_addextendedproperty 'MS_Description', '장비 번호', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', EQU_COM_EQNO;
EXEC sp_addextendedproperty 'MS_Description', '통신 구분', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', EQU_COM_KIND;
EXEC sp_addextendedproperty 'MS_Description', '저장 시간', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', EQU_COM_DATE;
EXEC sp_addextendedproperty 'MS_Description', 'DATA 메시지', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', EQU_COM_DATA;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_COM_EQUCOM, 'COLUMN', BKCK_FG;


--------------------------------------------------------------------------------------------------------------


--[PGM MENU 마스터]
--DROP TABLE DB_COM_MNUMST;

CREATE TABLE DB_COM_MNUMST
(
	M_MNID				VARCHAR(10) NOT NULL , 
	M_LEVL				VARCHAR(10) NULL ,
	M_PMID				VARCHAR(10) NULL ,
	M_NAME				VARCHAR(30) NULL ,
	M_IPIP				VARCHAR(20) NULL ,
	M_BRFM				VARCHAR(100) NULL ,
	M_AUT1				VARCHAR(10) NULL ,
	M_CFID				VARCHAR(20) NULL ,
	M_CFDT				DATETIME NULL ,
	M_USYN				VARCHAR(1) NULL ,
	M_INDT				DATETIME NULL ,
	REMARKS             VARCHAR(100) NULL ,
	REG_USER_ID         VARCHAR(20) NULL ,
	REG_DTM             DATETIME NULL ,
	MOD_USER_ID         VARCHAR(20) NULL ,
	MOD_DTM             DATETIME NULL ,
	BKCK_FG             VARCHAR(1) DEFAULT '*' NULL 
);

ALTER TABLE DB_COM_MNUMST
	ADD CONSTRAINT  PK_DB_COM_MNUMST PRIMARY KEY (M_MNID);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', 'PGM MENU 마스터', 'USER', DBO, 'TABLE', DB_COM_MNUMST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '메뉴 ID', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_MNID;
EXEC sp_addextendedproperty 'MS_Description', '레벨', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_LEVL;
EXEC sp_addextendedproperty 'MS_Description', '상위ID', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_PMID;
EXEC sp_addextendedproperty 'MS_Description', '프로그램명', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_NAME;
EXEC sp_addextendedproperty 'MS_Description', '컴퓨터설정', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_IPIP;
EXEC sp_addextendedproperty 'MS_Description', '실행폼명', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_BRFM;
EXEC sp_addextendedproperty 'MS_Description', '권한1', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_AUT1;
EXEC sp_addextendedproperty 'MS_Description', '승인자', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_CFID;
EXEC sp_addextendedproperty 'MS_Description', '승인일자', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_CFDT;
EXEC sp_addextendedproperty 'MS_Description', '사용여부', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_USYN;
EXEC sp_addextendedproperty 'MS_Description', '입력일', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', M_INDT;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러그', 'USER', DBO, 'TABLE', DB_COM_MNUMST, 'COLUMN', BKCK_FG;


--------------------------------------------------------------------------------------------------------------

--[사용자 권한 마스터]
--DROP TABLE DB_COM_USRAUT;

CREATE TABLE DB_COM_USRAUT
(
	UA_USID               VARCHAR(20) NOT NULL ,
	UA_MNID               VARCHAR(20) NOT NULL ,
	REMARKS               VARCHAR(100) NULL ,
	REG_USER_ID           VARCHAR(20) NULL ,
	REG_DTM               DATETIME  NULL ,
	MOD_USER_ID           VARCHAR(20) NULL ,
	MOD_DTM               DATETIME  NULL ,
	BKCK_FG               VARCHAR(1) DEFAULT '*' NULL 
);

ALTER TABLE DB_COM_USRAUT
	ADD CONSTRAINT  PK_DB_COM_USRAUT PRIMARY KEY (UA_USID, UA_MNID);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '사용자 권한 마스터', 'USER', DBO, 'TABLE', DB_COM_USRAUT ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '사용자ID', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', UA_USID;
EXEC sp_addextendedproperty 'MS_Description', '메뉴ID', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', UA_MNID;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_COM_USRAUT, 'COLUMN', BKCK_FG;

--------------------------------------------------------------------------------------------------------------

--[사용자 마스터]
--DROP TABLE DB_COM_USRMST;

CREATE TABLE DB_COM_USRMST
(
	U_USID              VARCHAR(20) NOT NULL ,
	U_NAME				VARCHAR(20) NULL ,
	U_USNO				VARCHAR(20) NULL ,
	U_UANO				VARCHAR(20) NULL ,
	U_EXDT				VARCHAR(20) NULL ,
	U_PASS				VARCHAR(20) NULL ,
	U_PUDT				VARCHAR(20) NULL ,
	U_USYN				VARCHAR(1) NULL ,
	U_LFTF				VARCHAR(1) NULL ,
	U_LFDT				VARCHAR(20) NULL ,
	U_LFAU				VARCHAR(20) NULL ,
	U_LFAD				VARCHAR(20) NULL ,
	U_DEPT				VARCHAR(20) NULL ,
	U_AUTI				VARCHAR(20) NULL ,
	U_SVYN				VARCHAR(20) NULL ,
	U_CFID				VARCHAR(20) NULL ,
	U_CFDT				VARCHAR(20) NULL ,
	U_IPIP				VARCHAR(20) NULL ,
	U_GRUP				VARCHAR(1) NULL ,
	REG_USER_ID         VARCHAR(20) NULL ,
	REG_DTM             DATETIME  NULL ,
	MOD_USER_ID         VARCHAR(20) NULL ,
	MOD_DTM             DATETIME  NULL ,
	BKCK_FG             VARCHAR(1) DEFAULT '*' NULL 
);

ALTER TABLE DB_COM_USRMST
	ADD CONSTRAINT  PK_DB_COM_USRMST PRIMARY KEY (U_USID);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '사용자 마스터', 'USER', DBO, 'TABLE', DB_COM_USRMST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '사용자ID', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_USID;
EXEC sp_addextendedproperty 'MS_Description', '이름', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_NAME;
EXEC sp_addextendedproperty 'MS_Description', '사원번호', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_USNO;
EXEC sp_addextendedproperty 'MS_Description', '주민번호', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_UANO;
EXEC sp_addextendedproperty 'MS_Description', '퇴사일(미사용일)', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_EXDT;
EXEC sp_addextendedproperty 'MS_Description', '패스워드', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_PASS;
EXEC sp_addextendedproperty 'MS_Description', '변경일', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_PUDT;
EXEC sp_addextendedproperty 'MS_Description', '사용구분', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_USYN;
EXEC sp_addextendedproperty 'MS_Description', '거부구분', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_LFTF;
EXEC sp_addextendedproperty 'MS_Description', '거부일', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_LFDT;
EXEC sp_addextendedproperty 'MS_Description', '승인자', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_LFAU;
EXEC sp_addextendedproperty 'MS_Description', '승인일', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_LFAD;
EXEC sp_addextendedproperty 'MS_Description', '부서', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_DEPT;
EXEC sp_addextendedproperty 'MS_Description', '권한', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_AUTI;
EXEC sp_addextendedproperty 'MS_Description', '서브폼', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_SVYN;
EXEC sp_addextendedproperty 'MS_Description', '확인자', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_CFID;
EXEC sp_addextendedproperty 'MS_Description', '확인일', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_CFDT;
EXEC sp_addextendedproperty 'MS_Description', 'IP Addr', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_IPIP;
EXEC sp_addextendedproperty 'MS_Description', '그룹', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', U_GRUP;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_COM_USRMST, 'COLUMN', BKCK_FG;

--------------------------------------------------------------------------------------------------------------
--[재고 마스터]
--DROP TABLE DB_STO_STOMST;

CREATE TABLE DB_STO_STOMST
(
	WHID            VARCHAR(10) NOT NULL ,
	LOCT	    	VARCHAR(30) NOT NULL ,
	ROW				VARCHAR(2) NULL ,
	BAY				VARCHAR(2) NULL ,
	LEV				VARCHAR(2) NULL ,
	RACK_STS		VARCHAR(2) NULL ,
	STOCK_STS		VARCHAR(2) NULL ,
	PLT_ID		    VARCHAR(30) NULL ,
	REMARKS			VARCHAR(100) NULL ,
	REG_USER_ID     VARCHAR(20) NULL ,
	REG_DTM         DATETIME NULL ,
	MOD_USER_ID     VARCHAR(20) NULL ,
	MOD_DTM         DATETIME NULL ,
	BKCK_FG         VARCHAR(1) DEFAULT '*' NULL 
);

ALTER TABLE DB_STO_STOMST
	ADD CONSTRAINT  PK_DB_STO_STOMST PRIMARY KEY (WHID, LOCT);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '재고 마스터', 'USER', DBO, 'TABLE', DB_STO_STOMST ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '창고구분', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', WHID;
EXEC sp_addextendedproperty 'MS_Description', '재고위치', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', LOCT;
EXEC sp_addextendedproperty 'MS_Description', '열', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', ROW;
EXEC sp_addextendedproperty 'MS_Description', '행', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', BAY;
EXEC sp_addextendedproperty 'MS_Description', '단', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', LEV;
EXEC sp_addextendedproperty 'MS_Description', 'RACK 상태', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', RACK_STS;
EXEC sp_addextendedproperty 'MS_Description', '재고상태', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', STOCK_STS;
EXEC sp_addextendedproperty 'MS_Description', '파렛트 ID', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', PLT_ID;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', MOD_DTM;
EXEC sp_addextendedproperty 'MS_Description', '백업프러스', 'USER', DBO, 'TABLE', DB_STO_STOMST, 'COLUMN', BKCK_FG;


--------------------------------------------------------------------------------------------------------------
--[재고 상세 디테일]
--DROP TABLE DB_STO_STODTL;

CREATE TABLE DB_STO_STODTL
(
	WHID            VARCHAR(10) NOT NULL ,
	LOCT	    	VARCHAR(30) NOT NULL ,
	OWNRKY			VARCHAR(20) NULL ,
	LOCAKY			VARCHAR(20) NULL ,
	SKUKEY			VARCHAR(20) NULL ,
	DESC01			VARCHAR(200) NULL ,
	DESC02		    VARCHAR(180) NULL ,
	STOQTY			NUMERIC(20,0) NULL ,
	WEIGHT     		NUMERIC(20,0) NULL ,
	STOCK_STS       VARCHAR(2) NULL ,
	REG_USER_ID     VARCHAR(20) NULL ,
	REG_DTM         DATETIME NULL ,
	MOD_USER_ID     VARCHAR(20) NULL ,
	MOD_DTM         DATETIME NULL
);

ALTER TABLE DB_STO_STODTL
	ADD CONSTRAINT  PK_DB_STO_STODTL PRIMARY KEY (WHID, LOCT);

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '재고 상세 디테일', 'USER', DBO, 'TABLE', DB_STO_STODTL ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '창고구분', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', WHID;
EXEC sp_addextendedproperty 'MS_Description', '재고위치', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', LOCT;
EXEC sp_addextendedproperty 'MS_Description', '화주', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', OWNRKY;
EXEC sp_addextendedproperty 'MS_Description', '호기', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', LOCAKY;
EXEC sp_addextendedproperty 'MS_Description', '제품코드', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', SKUKEY;
EXEC sp_addextendedproperty 'MS_Description', '제품명', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', DESC01;
EXEC sp_addextendedproperty 'MS_Description', '규격', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', DESC02;
EXEC sp_addextendedproperty 'MS_Description', '재고수량', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', STOQTY;
EXEC sp_addextendedproperty 'MS_Description', '무게', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', WEIGHT;
EXEC sp_addextendedproperty 'MS_Description', '재고상태', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', STOCK_STS;
EXEC sp_addextendedproperty 'MS_Description', '입력 ID', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', REG_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '입력일자', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', REG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '수정 ID', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', MOD_USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '수정일자', 'USER', DBO, 'TABLE', DB_STO_STODTL, 'COLUMN', MOD_DTM;



--------------------------------------------------------------------------------------------------------------
--[SYSTEM LOG 마스터]
--DROP TABLE DB_SYS_SYSLOG;

CREATE TABLE DB_SYS_SYSLOG
(
	USER_ID             VARCHAR(20) NOT NULL ,
	CONN_DTM			DATETIME NOT NULL ,
	USER_NAME           VARCHAR(20) NULL ,	
	END_DTM				DATETIME NULL ,
	CP_IP				VARCHAR(20) NULL ,
	CP_NAME				VARCHAR(20) NULL ,
	CONN_LOG			VARCHAR(200) NULL 
);

ALTER TABLE DB_SYS_SYSLOG
	ADD CONSTRAINT  PK_DB_SYS_SYSLOG PRIMARY KEY (USER_ID, CONN_DTM );

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', 'SYSTEM LOG 마스터', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '사용자ID', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', USER_ID;
EXEC sp_addextendedproperty 'MS_Description', '접속일자', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', CONN_DTM;
EXEC sp_addextendedproperty 'MS_Description', '사용자이름', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', USER_NAME;
EXEC sp_addextendedproperty 'MS_Description', '종료일자', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', END_DTM;
EXEC sp_addextendedproperty 'MS_Description', '접속컴퓨터IP', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', CP_IP;
EXEC sp_addextendedproperty 'MS_Description', '접속컴퓨터명', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', CP_NAME;
EXEC sp_addextendedproperty 'MS_Description', '접속로그', 'USER', DBO, 'TABLE', DB_SYS_SYSLOG, 'COLUMN', CONN_LOG;



--------------------------------------------------------------------------------------------------------------

--[장비 에러 로그]
--DROP TABLE DB_SYS_ERRLOG;

CREATE TABLE DB_SYS_ERRLOG
(
	LOG_DTM 	DATETIME NOT NULL,
	LOG_SEQ 	NUMERIC(10, 0) NOT NULL,
	ERR_EQUIP 	VARCHAR(20) NULL,
	ERR_EQ_NO 	VARCHAR(3) NULL,
	ERR_CODE 	VARCHAR(20) NULL,
	ERR_MSG 	VARCHAR(200) NULL,
	ERR_POS 	VARCHAR(20) NULL,
	ERR_STON 	VARCHAR(8) NULL,
	JOB_NO 		VARCHAR(4) NULL,
	LOCT 		VARCHAR(8) NULL,
	PLT 		VARCHAR(1) NULL,
	PLT_ID 		VARCHAR(50) NULL,
	REMARKS 	VARCHAR(200) NULL,
	REG_USER_ID VARCHAR(20) NULL
	
);

ALTER TABLE DB_SYS_ERRLOG
	ADD CONSTRAINT  PK_DB_SYS_ERRLOG PRIMARY KEY (LOG_DTM, LOG_SEQ );

--table comment  
EXEC   SP_ADDEXTENDEDPROPERTY 'MS_DESCRIPTION', '장비 에러 로그', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG ;

--column comment  
EXEC sp_addextendedproperty 'MS_Description', '에러일자', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', LOG_DTM;
EXEC sp_addextendedproperty 'MS_Description', '순번', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', LOG_SEQ;
EXEC sp_addextendedproperty 'MS_Description', '장비명', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_EQUIP;
EXEC sp_addextendedproperty 'MS_Description', '장비 호기', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_EQ_NO;
EXEC sp_addextendedproperty 'MS_Description', '에러 코드', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_CODE;
EXEC sp_addextendedproperty 'MS_Description', '에러명', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_MSG;
EXEC sp_addextendedproperty 'MS_Description', '에러 포지션', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_POS;
EXEC sp_addextendedproperty 'MS_Description', '에러 위치', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', ERR_STON;
EXEC sp_addextendedproperty 'MS_Description', '작업번호', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', JOB_NO;
EXEC sp_addextendedproperty 'MS_Description', '재고위치', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', LOCT;
EXEC sp_addextendedproperty 'MS_Description', '파렛트 유무', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', PLT;
EXEC sp_addextendedproperty 'MS_Description', '파렛트 ID', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', PLT_ID;
EXEC sp_addextendedproperty 'MS_Description', '비고', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', REMARKS;
EXEC sp_addextendedproperty 'MS_Description', '사용자', 'USER', DBO, 'TABLE', DB_SYS_ERRLOG, 'COLUMN', REG_USER_ID;

--------------------------------------------------------------------------------------------------------------