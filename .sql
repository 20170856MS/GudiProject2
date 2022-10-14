--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-14-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINROLE
--------------------------------------------------------

  CREATE TABLE "HR"."ADMINROLE" 
   (	"ROLENUM" NUMBER, 
	"ROLENAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

  CREATE TABLE "HR"."AREA" 
   (	"AREANUM" NUMBER, 
	"AREANAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "HR"."BOOK" 
   (	"BOOKNUM" NUMBER, 
	"BOOKNAME" VARCHAR2(200 BYTE), 
	"BOOKIMAGE" VARCHAR2(200 BYTE), 
	"BOOKPRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOB
--------------------------------------------------------

  CREATE TABLE "HR"."JOB" 
   (	"JOBNUM" NUMBER, 
	"JOBNAME" VARCHAR2(200 BYTE), 
	"JOBINTRO" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSE
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSE" 
   (	"LICENSENUM" NUMBER, 
	"LICENSENAME" VARCHAR2(200 BYTE), 
	"LICENSEHITS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSEBOOK
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEBOOK" 
   (	"LICENSEBOOKNUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"BOOKNUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSEJOB
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEJOB" 
   (	"LICENSEJOBNUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"JOBNUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSELIKE
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSELIKE" 
   (	"LIKENUM" NUMBER, 
	"NUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"LIKEDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSELIST
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSELIST" 
   (	"NUM" NUMBER, 
	"LICENSENAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSEMEMBERS
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEMEMBERS" 
   (	"NUM" NUMBER, 
	"AREANAME" VARCHAR2(200 BYTE), 
	"USERNAME" VARCHAR2(200 BYTE), 
	"PASSWORD" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSEQNA
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEQNA" 
   (	"QNANUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENTS" CLOB, 
	"WRITER" VARCHAR2(200 BYTE), 
	"REGDATE" DATE, 
	"HIT" NUMBER, 
	"REF" NUMBER, 
	"STEP" NUMBER, 
	"DEPTH" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENTS") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LICENSEROLE
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEROLE" 
   (	"NUM" NUMBER, 
	"USERNAME" VARCHAR2(200 BYTE), 
	"ROLENUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSESCHEDULE
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSESCHEDULE" 
   (	"LICENSESCHEDULENUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"SCHEDULENUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICENSEVIDEO
--------------------------------------------------------

  CREATE TABLE "HR"."LICENSEVIDEO" 
   (	"LICENSEVIDEONUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"VIDEONUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER_ROLE
--------------------------------------------------------

  CREATE TABLE "HR"."MEMBER_ROLE" 
   (	"NUM" NUMBER, 
	"USERNAME" VARCHAR2(200 BYTE), 
	"ROLENUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBERFILE
--------------------------------------------------------

  CREATE TABLE "HR"."MEMBERFILE" 
   (	"FILENUM" NUMBER, 
	"USERNAME" VARCHAR2(200 BYTE), 
	"FILENAME" VARCHAR2(400 BYTE), 
	"ORINAME" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA_COMMENT
--------------------------------------------------------

  CREATE TABLE "HR"."QNA_COMMENT" 
   (	"NUM" NUMBER, 
	"QNANUM" NUMBER, 
	"WRITER" VARCHAR2(200 BYTE), 
	"CONTENTS" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNAFILE
--------------------------------------------------------

  CREATE TABLE "HR"."QNAFILE" 
   (	"FILENAME" VARCHAR2(400 BYTE), 
	"ORINAME" VARCHAR2(400 BYTE), 
	"NUM" NUMBER, 
	"FILENUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATION" 
   (	"RESERNUM" NUMBER, 
	"ROOMNAME" VARCHAR2(100 BYTE), 
	"SEDATE" VARCHAR2(100 BYTE), 
	"SETIME" VARCHAR2(100 BYTE), 
	"DETAILNUM" NUMBER, 
	"TIMELENGTH" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SC_ORDER_USER
--------------------------------------------------------

  CREATE TABLE "HR"."SC_ORDER_USER" 
   (	"ORDERNUM" NUMBER, 
	"PRODUCTNUM" NUMBER, 
	"NUM" NUMBER, 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"ORDERDATE" DATE, 
	"TOTALPRICE" NUMBER, 
	"IMP_UID" VARCHAR2(50 BYTE), 
	"RESERNUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------

  CREATE TABLE "HR"."SCHEDULE" 
   (	"SCHEDULENUM" NUMBER, 
	"SCHEDULENAME" VARCHAR2(200 BYTE), 
	"SCHEDULEDATE" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SCPAY
--------------------------------------------------------

  CREATE TABLE "HR"."SCPAY" 
   (	"PAYNUM" NUMBER, 
	"NUM" NUMBER, 
	"ORDERNUM" NUMBER, 
	"PAYMETHOD" VARCHAR2(200 BYTE), 
	"PAYNAME" VARCHAR2(200 BYTE), 
	"PAYDATE" DATE, 
	"PAYAMOUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SIMPLEMEMBERS
--------------------------------------------------------

  CREATE TABLE "HR"."SIMPLEMEMBERS" 
   (	"NUM" NUMBER, 
	"USERNAME" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDYCAFE
--------------------------------------------------------

  CREATE TABLE "HR"."STUDYCAFE" 
   (	"SCNUM" NUMBER, 
	"AREANAME" VARCHAR2(100 BYTE), 
	"SCNAME" VARCHAR2(2000 BYTE), 
	"IMG" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDYCAFEDETAIL
--------------------------------------------------------

  CREATE TABLE "HR"."STUDYCAFEDETAIL" 
   (	"DETAILNUM" NUMBER, 
	"CDPAY" NUMBER, 
	"CDREGION" VARCHAR2(2000 BYTE), 
	"SCNAME" VARCHAR2(2000 BYTE), 
	"SCEXPLAIN" VARCHAR2(2000 BYTE), 
	"IMG" VARCHAR2(100 BYTE), 
	"LATITUDE" NUMBER, 
	"LONGITUDE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDYROOMDETAIL
--------------------------------------------------------

  CREATE TABLE "HR"."STUDYROOMDETAIL" 
   (	"ROOMNUM" NUMBER, 
	"ROOMCOUNT" NUMBER, 
	"ROOMNAME" VARCHAR2(200 BYTE), 
	"DETAILNUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "HR"."VIDEO" 
   (	"VIDEONUM" NUMBER, 
	"VIDEOTITLE" VARCHAR2(200 BYTE), 
	"VIDEOLINK" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ADMINROLE
SET DEFINE OFF;
Insert into HR.ADMINROLE (ROLENUM,ROLENAME) values (1,'admin');
Insert into HR.ADMINROLE (ROLENUM,ROLENAME) values (2,'vip');
Insert into HR.ADMINROLE (ROLENUM,ROLENAME) values (3,'member');
REM INSERTING into HR.AREA
SET DEFINE OFF;

Insert into HR.AREA (AREANUM,AREANAME) values (1,'서울시 강남구');
Insert into HR.AREA (AREANUM,AREANAME) values (2,'서울시 강동구');
Insert into HR.AREA (AREANUM,AREANAME) values (3,'서울시 강북구');
Insert into HR.AREA (AREANUM,AREANAME) values (4,'서울시 강서구');
Insert into HR.AREA (AREANUM,AREANAME) values (5,'서울시 관악구');
Insert into HR.AREA (AREANUM,AREANAME) values (6,'서울시 광진구');
Insert into HR.AREA (AREANUM,AREANAME) values (7,'서울시 금천구');
REM INSERTING into HR.BOOK
SET DEFINE OFF;
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (6,'2022 수제비 정보처리기사','http://image.kyobobook.co.kr/images/book/large/286/l9791157676286.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (7,'2022 시나공 정보처리기사 실기','https://image.yes24.com/goods/104245816/L',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (8,'2022 이기적 정보처리기사 필기','https://image.aladin.co.kr/product/28347/7/cover/8931465300_1.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (9,'2022 에듀윌 전기기사 필기','http://image.kyobobook.co.kr/images/book/xlarge/663/x9791189728663.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (10,'2022 시나공 빅데이터분석기사 필기','http://image.kyobobook.co.kr/images/book/xlarge/579/x9791190670579.jpg',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (11,'2022 이기적 정보처리기능사 필기','https://image.aladin.co.kr/product/27877/2/cover500/8931465289_1.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (963,'수제비비 2022','https://previews.123rf.com/images/oasis15/oasis151506/oasis15150600005/40908970-%EB%B9%88-%EC%B1%85-%ED%91%9C%EC%A7%80.jpg',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1076,'ㅎㅇ','https://image.yes24.com/goods/104245816/L',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1085,'123','https://image.yes24.com/goods/104245816/L',2321);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1123,'수제비 정보처리기사22','https://image.yes24.com/goods/104245816/L',18000);
REM INSERTING into HR.JOB
SET DEFINE OFF;
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (750,'광학기능사','① 광학기능사란 산업인력공단에서 시행하는 광학기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 광학을 이용한 기기에는 안경, 확대경, 카메라, 복사기 등 주변에서 쉽게 접할 수 있는 것뿐만 아니라 군사, 의료시술용, 레이저응용분야, 광섬유분야, 광정보통신분야 등에서 사용되는 광학기기 등 매우 다양하다.
③ 광 정보통신사업, 우주산업 등 첨단분야를 중심으로 한 광학분야의 발전으로 광학기기들이 지속적으로 개발되고 활용됨에 따라 산업현장에서 광학기기를 제작, 조립, 측정, 검사, 확인 등에 필수적으로 사용되는 렌즈를 가공, 연마, 제조하는 기능업무를 수행할 숙련된 기능인력을 양성하기 위해 광학기능사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (751,'발송배전기술사','① 모든 산업에서 기초가 되는 전기는 편리하고 깨끗한 에너지이지만 전기의 생산, 수송, 사용에 이르기까지 모든 설비는 전기특성에 적합하게 시공되어야만 위험성을 배제할 수 있다.
② 전력수요의 확장에 대응하고 전력공급의 신뢰도를 높이기 위해서는 배전선로의 신·증설 및 개·보수공사의 기초가 되는 도면설계 및 공사감독에 전문가에 손길이 필수적이다.
③ 이에 따라 안전한 전기시설을 위하여 전문지식과 풍부한 실무경험을 갖춘 전문기능인력을 양성하기 위해 발송배전기술사 자격제도가 제정되었다.
④ 발송배전기술사는 발전설비, 송배전설비 등에 대한 설계·감리 등을 담당하는 최고의 기술자로 전기, 전자, 전력, 통신관련 분야 등 활동 범위가 넓다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (752,'전기공사기사','① 전기공사기사는 공사비의 적산, 공사공정계획의 수립, 시공과정에서 전기의 적정여부 관리 등 주로 기술 적인 직무를 수행한다.
② 또한 공사현장 대리인으로서 시공자를 대리하여 현장관리를 하는 동시에 발주자에 대해서는 시공자를 대신하여 업무를 수행하는 역할을 한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (753,'로봇하드웨어개발기사','① 4차 산업혁명의 대표 분야인 로봇 부문 전문 인력 수요에 대응하고자 로봇기구개발기사, 로봇소프트웨어개발기사, 로봇하드웨어개발기사 등 3개 종목을 새롭게 만들었다.
② 각종 산업에 사용되는 로봇을 제작하기 위해 로봇 하드웨어 아키텍처 설계, 액추에이터 드라이버 설계, 모션 제어기 설계, 입출력 인터페이스 설계, 전원부 설계, MCU 하드웨어 설계, 전장 설계, 센서 신호처리부 설계를 통해 로봇 하드웨어를 설계하고, 로봇 하드웨어 시험평가와 유지보수를 하는 직무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (754,'전기산업기사','① 전기산업기사는 주로 전기기계기구의 설계, 제작, 관리 등과 전기설비를 구성하는 모든 기자재의 규격, 크기, 용량 등을 산정하기 위한 계산 및 자료의 활용 그리고 전기설비의 설계, 도면 및 시방서 작성, 점검 및 유지, 시험작동, 운용관리 등에 있어 전문적인 역할과 전기안전관리 담당자로서의 업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (755,'전자응용기술사','① 전자산업은 일반 가전제품에서부터 컴퓨터, 통신장비, 항공우주산업분야 등 가공 최첨단 장비에 이르기까지 적용범위가 광범위하여 모든 산업의 기초산업이라고 할 수 있는 기술인력의 연구개발을 통해 고부가가치를 창출할 수 있는 분야이다.
② 전자산업의 발전으로 세계 유수의 전자공업국으로 발돋움하기 위하여 전자기기에 관한 전문적인 지식과 기술, 풍부한 실무경험을 가진 최상급의 전문기술인력을 양성하기 위해 전자응용기술사 자격제도를 제정하였다.
③ 끊임없이 쏟아져 나오는 첨단기술에 대한 관심과 노력을 가지는 것이 취업이나 상위직으로의 승진, 관련분야로의 전직에 많은 영향을 미친다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (756,'전자캐드기능사','① 전자캐드기능사란 산업인력공단에서 시행하는 전자캐드기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② CAD(Computer Aided Design)란 컴퓨터를 도구로 사용하여 기계나 물체를 설계하는 것으로 설계의 기본개념 단계에서부터 최종 마무리 단계인 해석까지의 전 과정에 걸쳐서 컴퓨터를 활용하여 설계하는 방식을 말한다.
③ 전자캐드기능사 자격제도는 기본적인 지식과 기술을 갖추고 전자, 통신 및 컴퓨터 등의 응용기기 및 제품의 설계 및 제작할 수 있는 숙련된 기능인력을 양성하고자 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (757,'전자산업기사','① 전자산업기사는 전자에 관한 상급숙련기능을 바탕으로 전자기기 및 기초적인 전자회로를 설계, 전자제품 생산 및 관리, 보수, 수리하는 작업을 담당한다.
② 부품가공 및 조립, 검사 등의 작업전반을 관리하는 역할을 한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (758,'전자기기기능사','① 전자기기기능사는 가정용, 공업용, 텔레비전, 음향기기, 영상기기 등 각종 전자기기를 분해, 조립, 조정, 수리하고 공장자동화 설비의 계측제어장치설비와 조작, 보수, 관리하는 업무를 수행한다.
② 2016년도부터는 기존의 검정형 시험방법 외에 과정평가형으로도 전자기기기능사 자격을 취득할 수 있다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (759,'텔레마케팅관리사','① 텔레마케팅관리사는 시장환경분석, 상품개발기획, 전략수립, 조직운영관리, 성과관리, 고객관계 관리, 판매관리, 인바운드 · 아웃바운드 마케팅, 텔레마케팅 시스템운용의 업무를 수행한다.
② 2017년부터 텔레마케팅관리사 자격은 기존의 검정형외에 과정평가형으로도 취득할 수 있게 되었다.
③ 2022년부터 실기시험 시행방법은 복합형(필답형 + 작업형)에서 필답형으로 변경된다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (760,'건설안전기술사','① 건설안전과 관련된 자격 제도는 건설안전산업기사, 건설안전기사, 건설안전기술사가 있다. 건설안전기술사는 안전관리 분야에 관한 국가기술자격 제도로서, 안전관리에 관한 기술사 제도로는 가스기술사, 건설안전기술사, 기계안전기술사, 산업위생관리기술사, 소방기술사, 인간공학기술사, 전기안전기술사, 화공안전기술사가 있다.
② 건설안전 기술사는 건설안전 분야에 고도의 전문지식과 실무경험에 입각한 계획, 연구, 설계, 분석, 시험, 운영, 시공, 평가 또는 이에 관한 지도, 감리 등의 기술업무 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (761,'가스기능사','① 가스기능사란 산업인력공단에서 시행하는 가스기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 가스기능사 자격은 고압가스와 관련된 생산, 공정, 시설, 기수의 안전관례에 대한 제도적 개편과 기능 인력을 양성하기 위해 가스기능사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (762,'가스산업기사','① 2021년부터 가스산업기사 자격취득방법에 과정평가형 자격제도가 도입되어, 기존의 검정형 시험 외에 과정평가형으로도 취득할 수 있다.
② 가스산업기사는 고압가스 및 용기제조의 공정관리, 가스의 사용방법 및 취급요령 등을 위해 예방을 위 한 지도 및 감독업무와 저장, 판매, 공급 등의 과정에서 안전관리를 위한 지도 및 감독 업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (763,'산업안전기사','① 안전관리가 필요한 사업장에서는 사업장의 규모에 따라 1~2명 이상의 안전관리자를 반드시 배치해야 한다. 안전관리자 선임 자격으로는 대학에서 산업안전과 관련된 학과를 졸업하거나 전공하지 않은 비전공자들은 산업안전기사 또는 산업안전산업기사 자격증을 취득하여야 한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (764,'소방기술사','① 소방기술사는 안전관리 분야에 관한 국가기술자격 제도로서, 안전관리에 관한 기술사 제도로는 가스기술사, 건설안전기술사, 기계안전기술사, 산업위생관리기술사, 소방기술사, 인간공학기술사, 전기안전기술사, 화공안전기술사가 있다.
② 소방기술사는 소방설비 종목에 관한 고도의 전문지식과 실무경험에 입각한 계획, 연구, 설계, 분석, 시험, 운영, 시공, 평가, 또는 이에 관한 지도, 감리 등의 기술업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (765,'전기안전기술사','① 전기안전기술사는 안전관리 분야에 관한 국가기술자격 제도로서, 안전관리에 관한 기술사 제도로는 가스기술사, 건설안전기술사, 기계안전기술사, 산업위생관리기술사, 소방기술사, 인간공학기술사, 전기안전기술사, 화공안전기술사가 있다.
② 전기안전기술사는 전기안전 분야에 관한 고도의 전문지식과 실무경험에 입각한 계획, 연구, 설계, 분석, 시험, 운영, 시공, 평가 또는 이에 관한 지도, 감리 등의 기술업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (766,'제빵기능사','① 2020년부터 제빵기능사 필기시험과 실기시험 과목이 개편되어 시행된다. 제과 · 제빵 기능사 필기시험은 기존 공통과목의 필기시험 상호면제에서 종목별 개별평가로 변경된다.
② 2017년도부터 기존의 검정형 시험방법 외에 과정평가형 방법으로도 제빵기능사 자격을 취득할 수 있다.
③ 제빵기능사는 주로 이스트 같은 발효균을 사용하여 발효과정을 거치는 빵을 만드는 작업을 하고, 제과기능사는 주로 발효과정을 거치지 않는 케이크, 과자 등을 만드는 작업을 한다.
④ 제빵에 관한 숙련기능을 가지고 각 제빵제품 제조에 필요한 재료의 배합표 작성, 재료 평량을 하고 각종 제과용 기계 및 기구를 사용하여 성형, 굽기, 장식, 포장 등의 공정을 거쳐 각종 제빵 제품을 만드는 업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (767,'미용사','① 얼굴, 머리를 아름답게 만들기 위하여 헤어 및 두피, 메이크업에 적절한 관리법과 기기 및 제품을 사용하여 일반미용을 수행한다.
② 얼굴 및 신체의 피부를 아름답게 유지 · 보호 · 개선 · 관리하기 위하여 각 부위와 유형에 적절한 관리법과 기기 및 제품을 사용하여 피부미용을 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (768,'스포츠경영관리사','① 스포츠경영관리사 자격은 우리나라의 스포츠 경영분야에서 유일한 국가자격이다.
② 스포츠경영관리사 제도를 처음 도입하였던 2005년도에는 응시 제한이 있었으나 2011년부터는 학력규제 요건이 폐지되면서 누구나 응시할 수 있게 되었다.
③ 스포츠경영관리사는 프로 및 아마추어 스포츠구단의 스포츠마케팅을 기획하고 운영하는 업무를 담당한다. 또한 스포츠콘텐츠의 확보와 상품화에 힘쓰고, 스포츠선수 대리인사업을 시행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (769,'가구제작기능사','① 가구제작기능사란 산업인력공단에서 시행하는 가구제작기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 가구제작은 자동화에 한계가 있고 주문가구, 고급가구 등 소비자의 다양한 기호를 만족시켜야 하는 공예품적인 성격이 강하기 때문에 실용적인 측면과 장식적인 측면을 모두 만족시켜줄 수 있어야 한다. 이에 따라 현장에서 가구제작 업무를 수행할 숙련기능인력을 양성하기 위해 가구제작기능사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (770,'사진기능사','① 사진기능사 자격제도는 광학기술의 눈부신 발전과 사진의 활용분야가 확대됨에 따라 인상, 상업사진을 중심으로 한 숙련기능인력을 양성하기 위하여 제정하였다.
② 사진기능사 자격은 사진기능사와 축소사진기능사로 나뉘었다가 2003년에 현재의 사진기능사 과정으로 통합하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (771,'인쇄기사','① 인쇄기사란 응시자격을 갖춘 자가 산업인력공단에서 시행하는 인쇄기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 인쇄기사 자격은 최근 인쇄수준이 향상되고 활용범위가 다양해짐에 따라 새로운 기술을 개발하고 각종 인쇄관련 기계 · 기구의 운용, 감독, 평가 등의 업무를 수행할 수 있는 전문기술인력을 양성하기 위해 제정하였다.
③ 최근 국민소득의 향상, 문화적 욕구의 증대로 인쇄물은 고급화, 다양화되고, 특히 수요자들의 기호의 변화에 따른 다품종 소량화가 이루어지고 있으며, 제판 · 인쇄분야의 자동화, 기계화, 컴퓨터를 이용한 전자출판이 일반화되면서 생산성도 크게 향상되고 있다.
④ 또한, CD 등의 디지털 매개체의 발전이 이루어지고 있고, 네트워크 기술이 발전하면서 전반적인 인쇄공정의 단축. 비용절감, 품질 향상, 환경 문제에 초점을 맞춘 인쇄기들이 등장하고 있다.
⑤ 최근 인쇄수준이 향상되고 활용범위가 다양해짐에 따라 새로운 기술을 개발하고 각종 인쇄관련 기계 · 기구의 운용, 감독, 평가 등의 업무를 수행할 수 있는 전문기술인력을 양성하기 위해 인쇄기사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (16,'게임개발자','향후 5년간 게임프로그래머의 고용은 다소 증가할 것으로 전망된다. 게임은 PC게임, 온라인 게임, 모바일 게임 등 여러가지가 있는데, 그 중에서도 스마트폰을 이용한 모바일 게임이 활성화되면서 이 분야의 개발 부문의 인력에 대한 수요는 다소 증가할 것으로 전망된다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (17,'펀드매니저','펀드매니저 전망 경제규모 증가로 사람들의 기본적인 보유자산이 늘어나고 2000년대 이후 은행권의 금리가 낮아지면서 다양한 투자상품에 관심을 가지는 사람이 느는 것도 펀드매니저의 고용에 긍정적 영향을 미칠 수 있습니다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (18,'의사','복지부와 국민건강보험공단의 공공데이터를 활용해 2020년 기준 201만 명의 보건의료인력 활동 현황을 파악한 결과다. 분석 결과 의사의 평균 연봉은 2억3070만원이었다. 월급으로 계산하면 1922만원이다. 직접 병원을 연 개원의는 2억9428만원으로 3억원에 육박했다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (19,'웹개발자','BLS에 따르면, 이에 따라 재능 있는 웹 개발자에 대한 수요가 계속 증가하고 있습니다. BLS에 따르면, 웹 개발자 채용이 2018년에서 2028년 사이에 13% 증가할 것으로 예상되며, 이는 다른 모든 직업의 평균을 훨씬 상회합니다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (20,'이발사','이발사는 자격면허를 소지하고 우수한 기술을 갖추면 직업시장이 넓으므로 취업이 쉽다. 기술과 고객을 상대하는 사교술 및 머리형을 창조하는 감각에 따라 노동 수요와 공급에 크게 영향을 받지 않는 안전성이 있는 직업이며, 자영사업으로도 전망이 밝다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (21,'판사','판사의 고용은 다소 증가할 전망이다. 사회발전에 따라 민사 분쟁이 다양화되고 있고 그 내용 또한 다양하고 복잡해져 전문지식을 갖춘 법관의 수요가 증대될 것으로 보인다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (22,'전기기사','전기기사 전망 및 진로는 다양하죠. 한국전력공사를 비롯한 공기업 전기 직무 채용에 도전하거나, 전기직 공무원을 노려볼 수도 있어요. 또는 사기업 전기기기제조업체, 전기공사업체, 전기설계전문업체, 전기기기 설비업체, 전기안전관리 대행업체 , 환경설비업체 등에 취업할 수 있어요.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (772,'전자출판기능사','① 전자출판기능사는 주어진 원고물의 문자나 사진 등을 전자출판용 기기를 사용하여 입력, 편집, 교정 등의 작업을 수행하여 인쇄에 적합한 원고를 제작, 출판하는 직무를 수행한다.
② 구체적으로, 의뢰받은 원고의 편집체제를 설정하고 문자 및 이미지를 입력하며 지면배치와 표작업같은 편집작업을 거쳐 전체적인 판형과 여백, 단, 자간, 서체, 그림 등의 여백을 조정하여 교정작업을 거친 후 기록매체를 이용하여 출력작업을 수행한다.
③ 기존의 수작업식 원고작업 대신에 출판편집용 컴퓨터 및 주변기기를 이용하여 조판 및 지면배치나 스캐너를 이용한 그래픽의 처리 등을 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (821,'피아노조율기능사','① 피아노조율기능사란 산업인력공단에서 시행하는 피아노조율기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
  ② 피아노조율기능사 자격은 피아노의 모든 건반이 제소리를 정확하게 내기 위해서는 조정, 조율, 수리 등의 고도의 정밀작업이 필요하기 때문에 이러한 기능 업무를 담당할 기능인력을 양성하기 위하여 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (822,'건축기사','① 건축기사는 건축공사를 관리, 감독하고, 구조 설계를 하거나 기타 시공에 관한 기술적 자문을 할 수 있고, 건축 의뢰자와 협의하여 건축의 형태와 설계에 관한 필요조건 등을 결정하고 사용자재, 부대설비, 공사비 등에 대하여 전문적으로 조언하는 역할을 한다.
  ② 고객과의 상담으로 건축물의 기능 및 공간적 조건을 결정하고, 통일성 있게 건물의 규모, 기능 배치를 설계하는 작업을 수행한다.
  ③ 상세한 설계도면을 작성하고 제도하여 도급자 또는 각 작업자에게 분배하며, 작업진행이 설계와 일치하는지 공사 진행 상태를 감독하는 업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (823,'건축목공기능사','① 건축목공기능사 시험은 필기시험 없이 실기시험 만으로 합격여부를 평가한다.
  ② 2020년부터 건축목공기능사 자격취득방법에 과정평가형 자격제도가 도입되어, 기존의 검정형 시험 외에 과정평가형으로도 취득할 수 있다.
  ③ 건축목공기능사는 각종 수공구와 목공기계를 사용하여 목구조의 골조 구성과 철근콘크리트조의 거푸집 제작, 설치 및 일반 건축물의 내외부를 목재로 마감하는 작업을 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (824,'교통기사','① 교통기사는 교통공학적인 측면에서 교통의 양, 속도, 신호의 효율성, 신호등 체계의 적절성 및 기타 교통상태에 영향을 미치는 요인에 대한 연구를 수행한다.
  ② 원활한 교통소통이 이루어질 수 있도록 도로를 설계하고 통행분포 및 교통배분과 배분된 교통의 노선별 선전 등에 관한 제반업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (825,'교통산업기사',' ① 교통산업기사는 교통에 관한 기초적인 기술이론을 바탕으로 교통실태 및 문제점 파악을 위한 실태 조사와 분석을 담당한다.
  ② 원활한 교통소통을 위한 도로교통시설의 설계와 교통사고방지를 위한 다각적인 대책 마련 등 제반업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (831,'정보처리기사','① 정보처리기사란 일정한 자격요건을 갖춘 자가 산업인력공단에서 시행하는 정보처리기사 시험에 합격하여 그 자격을 취득한 자를 말한다.

② 우수한 프로그램을 개발하여 업무의 효율성을 높이기 위해 컴퓨터에 관한 전문적인 지식과 기술을 갖춘 인재를 양성하고 평가하기 위하여 정보처리기사 자격제도를 제정하였다.

③ 우리나라는 일본, 중국, 베트남 3개국과 MOU를 체결함으로써 정보처리기사는 일본의 소프트웨어개발기술자, 중국의 소프트웨어설계기사, 베트남의 소프트웨어설계기사와 상호 인정되는 자격종목이 되었다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (1074,'11','222');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (728,'정보처리기사','① 정보처리기사란 일정한 자격요건을 갖춘 자가 산업인력공단에서 시행하는 정보처리기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 우수한 프로그램을 개발하여 업무의 효율성을 높이기 위해 컴퓨터에 관한 전문적인 지식과 기술을 갖춘 인재를 양성하고 평가하기 위하여 정보처리기사 자격제도를 제정하였다.
③ 우리나라는 일본, 중국, 베트남 3개국과 MOU를 체결함으로써 정보처리기사는 일본의 소프트웨어개발기술자, 중국의 소프트웨어설계기사, 베트남의 소프트웨어설계기사와 상호 인정되는 자격종목이 되었다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (729,'전기기사',' ① 전기기사란 응시자격을 갖춘 자가 산업인력공단에서 시행하는 전기기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 전기기사 자격제도는 전기를 합리적으로 사용하고 전기로 인한 재해를 방지하기 위해 전기설비의 운전 및 조작, 유지, 보수에 관한 전문화된 기술인력을 양성하고자 제정되었다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (730,'한식조리기능사',' ③ 한식조리기능사는 음식 재료를 씻고, 자르고, 익히고, 간을 맞추어 안전성과 영양 및 미각을 고려하여 음식을 만드는 업무를 수행한다.
④ 구체적으로 한식조리 부문에 배속되어 제공될 음식에 대한 계획을 세우고 조리할 재료를 선정하여 구입하고 검수하며, 구입한 재료를 위생학적, 영양학적으로 저장 · 관리하는 작업을 행한다. 또한 선정된 재료를 적정한 조리기구를 사용하여 조리 업무를 수행하고, 음식을 제공하는 장소에서 조리시설 및 기구를 위생적으로 관리하고 유지하는 업무를 담당한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (731,'빅데이터분석기사',' ① 빅데이터 분석기사란 응시자격을 갖춘 자가 한국데이터베이스진흥원에서 시행하는 빅데이터 분석기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 빅데이터분석기사란 빅데이터 이해를 기반으로 빅데이터 분석 기획, 빅데이터 수집·저장·처리, 빅데이터 분석 및 시각화를 수행하는 실무자를 말한다.
③ 디지털 뉴딜의 핵심 기반인 데이터 산업을 활성화하고 빅데이터 전문가 양성을 위해 과기정통부와 통계청 공동으로 2020년에 신설하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (732,'정보처리기능사','① 정보처리기능사란 산업인력공단에서 시행하는 정보처리기능사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 현대 정보화 사회에서 컴퓨터를 효과적으로 활용하기 위해 프로그램을 개발하여 업무의 효율성을 높이기 위해 컴퓨터에 관한 초급 수준의 지식과 기술을 갖춘 인재를 양성하고 평가하기 위하여 정보처리기능사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (733,'양식조리기능사','  ③ 양식조리기능사는 음식 재료를 씻고, 자르고, 익히고, 간을 맞추어 안전성과 영양 및 미각을 고려하여 음식을 만드는 업무를 수행한다.
④ 구체적으로 양식조리 부문에 배속되어 제공될 음식에 대한 계획을 세우고 조리할 재료를 선정하여 구입하고 검수하며, 구입한 재료를 위생학적, 영양학적으로 저장 · 관리하는 작업을 행한다. 또한 선정된 재료를 적정한 조리기구를 사용하여 조리 업무를 수행하고, 음식을 제공하는 장소에서 조리시설 및 기구를 위생적으로 관리하고 유지하는 업무를 담당한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (734,'일식조리기능사','  ③ 일식조리기능사는 음식 재료를 씻고, 자르고, 익히고, 간을 맞추어 안전성과 영양 및 미각을 고려하여 음식을 만드는 업무를 수행한다.
④ 구체적으로 일식조리 부문에 배속되어 제공될 음식에 대한 계획을 세우고 조리할 재료를 선정하여 구입하고 검수하며, 구입한 재료를 위생학적, 영양학적으로 저장 · 관리하는 작업을 행한다. 또한 선정된 재료를 적정한 조리기구를 사용하여 조리 업무를 수행하고, 음식을 제공하는 장소에서 조리시설 및 기구를 위생적으로 관리하고 유지하는 업무를 담당한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (735,'중식조리기능사','  ③ 중식조리기능사는 음식 재료를 씻고, 자르고, 익히고, 간을 맞추어 안전성과 영양 및 미각을 고려하여 음식을 만드는 업무를 수행한다.
④ 구체적으로 중식조리 부문에 배속되어 제공될 음식에 대한 계획을 세우고 조리할 재료를 선정하여 구입하고 검수하며, 구입한 재료를 위생학적, 영양학적으로 저장 · 관리하는 작업을 행한다. 또한 선정된 재료를 적정한 조리기구를 사용하여 조리 업무를 수행하고, 음식을 제공하는 장소에서 조리시설 및 기구를 위생적으로 관리하고 유지하는 업무를 담당한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (736,'멀티미디어콘텐츠제작전문가',' ① 최근 멀티미디어에 대한 관심이 급증하면서 멀티미디어콘텐츠제작전문가 자격제도에 대한 관심 또한 커지고 있다.
② 멀티미디어콘텐츠제작전문가는 영상, 음향, 디자인 등 사람의 시각과 청각으로 느낄 수 있는 멀티미디어들을 편집, 수정, 제작하는 자격이다.
③ 멀티미디어콘텐츠제작전문가는 멀티미디어콘텐츠제작을 위한 전문인력을 양성하기 위해 제정된 국가자격제도이다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (737,'정보관리기술사','① 현대 정보화사회에서는 지식과 정보의 양이 증대되어 작업량과 업무량이 급속하게 증가하고, 각종 업무의 전산화의 요구로 컴퓨터 사용이 보편화되면서 컴퓨터산업은 급속도로 확대되었다.
② 컴퓨터를 효과적으로 활용하기 위해서는 하드웨어뿐만 아니라 정교한 소프트웨어가 필요하고, 생활의 편리와 업무의 효율성을 추구하는 정보화 사회를 구현하기 위해서는 컴퓨터 프로그래밍에 관한 전문적인 지식과 기술을 보유한 인력이 요구된다.
③ 이에 따라 정보처리 업무의 효율성을 높이고, 각 조직에 가장 적합한 시스템을 설치 운영하기 위한 컴퓨터에 관한 전문적인 지식과 기술을 갖춘 전문기능인력을 양성하기 위해 정보관리기술사 자격제도가 제정되었다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (738,'사무자동화산업기사','① 사무자동화산업기사 시험은 컴퓨터와 각종 사무자동화기기를 이용하여 사무환경에서 필요로 하는 정보관리 및 사무처리 등의 계획, 추진 및 운용을 수행할 수 있는 능력을 평가한다.
② 사무자동화산업기사는 사무처리용 컴퓨터 및 컴퓨터통신의 운용을 중심으로 한 모든 사무자동화 실무와 사무자동화기기 및 뉴미디어 터미널 등의 사무정보기기를 활용하여 사무능률을 극대화할 수 있도록 종합적으로 유지, 관리하는 직무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (739,'정보기기운용기능사','① 정보기기운용기능사는 사무업무의 효율성을 도모하기 위해 각종 정보의 교환수단인 개인용 컴퓨터, 팩시밀리, 복사기, 복합기, 화상통신시스템, 비디오텍스시스템, 광비디오장치 등을 조작하고 활용하는 자격이다.
② 응용프로그램이나 새로운 기술의 정보기기의 기술을 습득하고, 컴퓨터 및 정보기기 등의 운용지식을 활용하여, 정보기기 및 통신장비의 설치, 시험, 조작, 정비, 검사, 관리, 유지, 보수 등에 관한 직무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (740,'정보처리산업기사','① 정보처리산업기사란 산업인력공단에서 시행하는 정보처리산업기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 컴퓨터를 효과적으로 활용하기 위해서 하드웨어뿐만 아니라 정교한 소프트웨어가 필요하다. 이에 따라 우수한 프로그램을 개발하여 업무의 효율성을 높이고, 궁극적으로 국가발전에 이바지하기 위해서 컴퓨터에 관한 전문적인 지식과 기술을 갖춘 사람을 양성할 목적으로 정보처리산업기사 자격제도를 제정하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (741,'전자계산기조직응용기사','① 2020년부터 정보처리기사 시험과목이 변경되면서, 정보처리기사와 전자계산기조직응용기사의 공통과목이었던 “전자계산기구조” 및 “운영체계” 시험과목이 서로 면제되지 않는다.
② 전자계산기조직응용기사는 전자계산기를 구성하는 H/W 시스템과 그 응용 S/W 시스템의 설계 및 구성과 그에 따른 효율적인 전산 시스템을 설치, 운영하고 전자계산기 조직을 유지, 보수하는 직무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (742,'컴퓨터시스템응용기술사','① 현대사회는 매우 급속히 발달하고 있는데, 산업화, 정보화, 국제화 사회에서 처리해야 하는 정보의 양이 급증하면서 대규모 전산망이 증가하고 있다.
② 정보통신기술의 발전으로 컴퓨터의 성능이 향상되고 컴퓨터 보급의 확대에 따라 컴퓨터 산업의 발달은 전자산업의 총아로 서 더욱 더 가속화되어 가고 있다.
③ 국제적 경쟁력을 갖춘 전자공업국으로 도약하기 위하여 컴퓨터 시스템에 관한 전문적인 지식과 기술, 풍부한 실무경험을 갖춘 전문기능인력을 양성하고자 컴퓨터시스템응용기술사 자격제도가 제정되었다.
④ 전자계산기기술사와 전자계산기조직응용기술사가 2012년부터 컴퓨터시스템응용기술사로 통합되어 시행되고 있다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (743,'3D프린터개발산업기사','① 2021년부터 3D프린터개발산업기사 자격취득방법에 과정평가형 자격제도가 도입되어, 기존의 검정형 시험 외에 과정평가형으로도 취득할 수 있다.
② 3D프린터는 3차원 설계도를 바탕으로 입체적으로 물건을 인쇄하는 기계자체를 말하고, 3D프린팅은 3D프린터로 입체적인 물건을 디자인하고 인쇄하는 모든 과정을 말한다.
③ 3D프린터개발산업기사는 3D프린터의 회로 및 기계장치, 프로그램 등을 개발하고 관리하는 능력을 평가하며, 객관식 필기시험과 복합형 실기시험으로 시행된다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (744,'광학기기산업기사','① 광학관련 자격증에는 국시원에서 시행하는 ‘안경사’와 산업인력공단에서 시행하는 ‘광학기능사’, ‘광학기기산업기사’, ‘광학기사’가 있다.
② 광학기기산업기사는 광학기기에 대한 기초지식과 기초기계 및 기초전자 부분의 측정기술을 바탕으로 쌍안경, 야시장비, 디지털카메라 등 군용 및 상용 광학기기를 조립하고 정비하는 작업을 수행하고, 이와 관련된 지도적 기능 업무를 담당한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (745,'로봇기구개발기사','① 4차 산업혁명의 대표 분야인 로봇 부문 전문 인력 수요에 대응하고자 로봇기구개발기사, 로봇소프트웨어개발기사, 로봇하드웨어개발기사 등 3개 종목을 새롭게 만들었다.
② 로봇 수요자의 요구사항을 파악하고, 이를 바탕으로 운용 환경 및 규정 검토, 로봇 기구 및 주변장치 설계, 부품 선정 및 기구 제작, 역학적 해석 및 통합 시험 등의 직무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (746,'반도체설계산업기사','① 반도체설계산업기사는 회로설계기술, 회로설계소프트웨어활용, 반도체제조를 위한 데이터 생성 등 반도체 설계 업무에 대한 기술기초지식과 숙련기능을 바탕으로 디지털 및 아날로그 회로를 반도체 집적회로를 제작하기 전까지의 단계에 해당되는 전반부 및 후반부 설계 업무와 이와 관련된 제반 소프트웨어에 활용하는 작업을 수행한다.
② 반도체설계산업기사의 상위등급이던 반도체설계기사 자격은 수요부족으로 2022년부터 폐지되었다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (747,'의공기사','① 의공기사란 응시자격을 갖춘 자가 산업인력공단에서 시행하는 의공기사 시험에 합격하여 그 자격을 취득한 자를 말한다.
② 의공기사 자격은 선진국의 기술 수준을 따라 잡기 위해 의료기기 산업분야에서 관련직무를 수행할 전문화된 기능인력을 확보하고자 2007년에 신설하였다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (748,'임베디드기사','① 임베디드 기사는 임베디드 시스템 하드웨어에 대한 이해, 임베디드 소프트웨어 플래폼, 임베디드 시스템 응용 소프트웨어에 대한 기초 지식과 설계 및 응용 능력을 바탕으로 임베디드 시스템에 펌웨어, 운영체제를 이식하고, 응용 프로그램을 설계, 구현 및 테스트를 수행하는 업무 또는 이와 관련된 지도적 업무를 수행한다.
② 임베디드 시스템의 하드웨어를 분석하여 하드웨어에 대한 초기화 및 테스트를 수행하며, OS(운영체제) 부팅을 위한 부트로더를 포함하는 펌웨어와 임베디드 시스템의 OS 관련한 플랫폼 소프트웨어 및 응용 소프트웨어를 설계, 구현하는 업무를 수행한다.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (749,'전기기능사','① 전기기능사는 전기관련 자격인 전기공사산업기사, 전기공사기사, 전기산업기사, 전기기사 자격증 취득의 첫 단계이다.
② 전기기능사는 전기에 필요한 장비 및 공구를 사용하여 회전기, 정지기, 제어장치 또는 빌딩, 공장, 주택, 및 전력시설물의 전선, 케이블, 전기기계 및 기구를 설치, 보수, 검사, 시험 및 관리하는 업무를 수행한다.
③ 전기기능사, 전기공사기능사 자격제도는 노동부령 제217호(2004.12.31.)에 의해 2006년부터 전기기능사로 통합되었다.');
REM INSERTING into HR.LICENSE
SET DEFINE OFF;
REM INSERTING into HR.LICENSEBOOK
SET DEFINE OFF;
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (29,1,6);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (30,1,7);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (31,1,8);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (32,2,9);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (33,4,10);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (34,5,11);
Insert into HR.LICENSEBOOK (LICENSEBOOKNUM,LICENSENUM,BOOKNUM) values (1124,1,1123);
REM INSERTING into HR.LICENSEJOB
SET DEFINE OFF;
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (773,1,728);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (774,2,729);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (775,3,730);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (776,4,731);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (777,5,732);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (778,6,733);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (779,7,734);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (780,8,735);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (781,9,736);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (782,10,737);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (783,11,738);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (784,12,739);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (785,13,740);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (786,14,741);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (787,15,742);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (788,16,743);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (789,17,744);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (790,18,745);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (791,19,746);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (792,20,747);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (793,21,748);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (794,22,749);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (795,23,750);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (796,24,751);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (797,25,752);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (798,26,753);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (799,27,754);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (800,28,755);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (801,29,756);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (803,30,757);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (804,31,758);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (805,32,759);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (806,33,760);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (807,34,761);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (808,35,762);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (809,36,763);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (810,37,764);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (811,38,765);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (812,39,766);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (813,40,767);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (814,41,768);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (815,42,769);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (816,43,770);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (817,44,771);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (818,45,772);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (826,46,821);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (827,47,822);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (828,48,823);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (829,49,824);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (830,50,825);
Insert into HR.LICENSEJOB (LICENSEJOBNUM,LICENSENUM,JOBNUM) values (832,1,731);
REM INSERTING into HR.LICENSELIKE
SET DEFINE OFF;
Insert into HR.LICENSELIKE (LIKENUM,NUM,LICENSENUM,LIKEDATE) values (864,41,1,to_date('22/10/13','RR/MM/DD'));
Insert into HR.LICENSELIKE (LIKENUM,NUM,LICENSENUM,LIKEDATE) values (1101,161,1,to_date('22/10/14','RR/MM/DD'));
Insert into HR.LICENSELIKE (LIKENUM,NUM,LICENSENUM,LIKEDATE) values (1088,142,1,to_date('22/10/14','RR/MM/DD'));
Insert into HR.LICENSELIKE (LIKENUM,NUM,LICENSENUM,LIKEDATE) values (1070,62,1,to_date('22/10/14','RR/MM/DD'));
REM INSERTING into HR.LICENSELIST
SET DEFINE OFF;
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (1,'정보처리기사');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (2,'전기기능사');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (3,'전기기사');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (4,'건축기사');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (5,'컴퓨터활용능력 2급');
REM INSERTING into HR.LICENSEMEMBERS
SET DEFINE OFF;
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (41,'서울시 금천구','fpqk1004','$2a$10$4tVJ8bif8xkGtEFEe/.rAuFvLlpOvVjlR6qyNCNXR0OtGRJIMUEP6','장민석','fpqk1004@naver.com','010-0000-0000');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (8,'서울시 강남구','IDID','$2a$10$Anendch8FUQilVocDxbEW.3MZCItmppnpztsPG0VlBJljVL5LfMpq','IDID','sdfjkl@naver.com','00-00-00-00');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (161,'서울시 금천구','ESH','$2a$10$3U3cz/tDD1PhdtEu1uRUXuvN3JHOENLkjTauHGmeKWisvKiwQvppS','은상현','tkdgus968@naver.com','010-9306-9690');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (62,'서울시 강남구','junsolhee','$2a$10$Ox4gBXTCA5vxga7QtoDjI.0tKa88VkFM3WG7kyOvRy1MjDqO8zpsy','hajun7','junsolhee7@naver.com','01012341234');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (121,'서울시 금천구','TEST12','$2a$10$SQmFZqnyQEnrAuXR2Bf9SuiS2hbqurcHcN28Psp/mB/JlhamTXFy.','TEST12','TEST12@naver.com','010-1222-1258');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (141,'서울시 금천구','ESHadmin','$2a$10$E6ZJofX9YbIzZjhY7tMm.OS01l6YaiZHfXVJhl6rFCesY/PhgSRB6','ESGE','admin@naver.com','010-1234-5557');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (142,'서울시 금천구','ID','$2a$10$5rtTdrzdcyMQX7wm1vYqt.mdCgCqHy2tdhlESEHmIKzAqx.yET2Si','구디','sdfjkl777@naver.com','010-1234-5678');
REM INSERTING into HR.LICENSEQNA
SET DEFINE OFF;
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (622,2,'비전공자인데 전기기사 자격증을 취득할 수 있나요?','IDID',to_date('22/10/14','RR/MM/DD'),0,622,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (628,5,'정보처리기능사 난이도 어떤 가요?','IDID',to_date('22/10/14','RR/MM/DD'),0,628,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (629,5,'정보처리기능사 자격증 공부방법 알려주세요.','IDID',to_date('22/10/14','RR/MM/DD'),0,629,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (627,1,'정보처리기사와 컴퓨터 활용능력 1급 중, 어느 것을 취득해야 할까요?','IDID',to_date('22/10/14','RR/MM/DD'),0,627,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (630,5,'정보처리기능사 난이도 어떤 가요?','IDID',to_date('22/10/14','RR/MM/DD'),0,630,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (632,4,'빅데이터분석기사 취업에 도움이 될까요?','IDID',to_date('22/10/14','RR/MM/DD'),0,632,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (635,4,'빅데이터분석기사 난이도가 어떤가요?','IDID',to_date('22/10/14','RR/MM/DD'),0,635,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (636,3,'한식조리기능사 응시조건 있어요?','IDID',to_date('22/10/14','RR/MM/DD'),0,636,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (639,3,'한식조리사자격증이랑 한식조리기능사 자격증이랑 뭐가 다른가요? ','IDID',to_date('22/10/14','RR/MM/DD'),0,639,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (641,1,'빅데이터분석기사와 정보처리기사 중 어느 자격증이 더 유용할까요?','qqq',to_date('22/10/14','RR/MM/DD'),0,641,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (642,5,'정보처리기능사 실기 합격 발표 올해 마지막 시험 관련해서요!','qqq',to_date('22/10/14','RR/MM/DD'),0,642,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (644,5,'정보처리기능사 뭘 배우는건가요?! 프로그램 관련해서요!','qqq',to_date('22/10/14','RR/MM/DD'),0,644,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (624,1,'정보처리기사의 난도와 공부법은 어떠한가요?','IDID',to_date('22/10/14','RR/MM/DD'),0,624,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (621,2,'전기기사의 난이도와 공부법은 어떠한가요?','IDID',to_date('22/10/14','RR/MM/DD'),0,621,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (623,1,'정보처리기사 취득 후 전망 진로가 궁금해요','IDID',to_date('22/10/14','RR/MM/DD'),0,623,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (625,1,'비전공자인데 정보처리기사 자격증을 취득할 수 있나요?','IDID',to_date('22/10/14','RR/MM/DD'),0,625,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (637,3,'한식조리기능사 자격증 취득 후 취업에 도움이 될까요?','IDID',to_date('22/10/14','RR/MM/DD'),0,637,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (640,2,'전기기사 취업 관련 질문입니다ㅠㅠ','qqq',to_date('22/10/14','RR/MM/DD'),0,640,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (643,5,'정보처리기능사 가채점이 60점인데 합격한거죠?!','qqq',to_date('22/10/14','RR/MM/DD'),0,643,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (585,2,'전기기사 취득 후 전망 진로가 궁금해요','IDID',to_date('22/10/12','RR/MM/DD'),0,585,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (421,5,'정보처리기능사','ID',to_date('22/09/30','RR/MM/DD'),0,421,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (626,1,'정보처리기사 독학하려는데 시험 난이도와 공부방법이 궁금합니다.','IDID',to_date('22/10/14','RR/MM/DD'),0,626,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (631,5,'정보처리기능사와 정보처리산업기사, 정보처리기사 내용 차이 궁금해요.','IDID',to_date('22/10/14','RR/MM/DD'),0,631,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (633,4,'빅데이터분석기사와 정보처리기사 중 어느 자격증이 더 유용할까요?','IDID',to_date('22/10/14','RR/MM/DD'),0,633,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (634,4,'빅데이터분석기사 관련학과가 어떻게 되나요?','IDID',to_date('22/10/14','RR/MM/DD'),0,634,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (638,3,'한식조리기능사 실기시험은 어떻게 진행 되나요?','IDID',to_date('22/10/14','RR/MM/DD'),0,638,0,0);
REM INSERTING into HR.LICENSEROLE
SET DEFINE OFF;
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1021,'fpqk1004',3);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (986,'IDID',2);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1121,'ESH',3);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1081,'TEST12',3);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1106,'ESHadmin',1);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1041,'junsolhee',1);
Insert into HR.LICENSEROLE (NUM,USERNAME,ROLENUM) values (1104,'ID',1);
REM INSERTING into HR.LICENSESCHEDULE
SET DEFINE OFF;
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (603,1,501);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (604,1,502);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (605,2,503);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (606,2,504);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (607,3,505);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (608,3,506);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (609,4,507);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (610,4,508);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (611,5,509);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (612,5,510);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (613,6,511);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (614,6,512);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (615,7,513);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (616,7,514);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (617,8,515);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (618,8,516);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (619,9,517);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (620,9,518);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (621,10,519);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (622,10,520);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (623,11,521);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (624,11,522);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (625,12,523);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (626,12,524);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (627,13,525);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (628,13,526);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (629,14,527);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (630,14,528);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (631,15,529);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (632,15,530);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (633,16,531);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (634,16,532);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (635,17,533);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (636,17,534);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (637,18,535);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (638,18,536);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (639,19,537);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (640,19,538);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (641,20,539);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (642,20,540);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (643,21,541);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (644,21,542);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (645,22,543);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (646,22,544);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (647,23,545);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (648,23,546);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (649,24,547);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (650,24,548);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (651,25,549);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (676,25,550);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (677,26,551);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (678,26,552);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (679,27,553);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (680,27,554);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (681,28,555);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (682,28,556);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (683,29,557);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (684,29,558);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (685,30,559);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (686,30,560);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (687,31,561);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (688,31,562);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (689,32,563);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (690,32,564);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (691,33,565);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (692,33,566);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (693,34,567);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (694,34,568);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (695,35,569);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (696,35,570);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (697,36,571);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (698,36,572);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (699,37,573);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (700,37,574);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (701,38,575);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (702,38,576);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (703,39,577);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (704,39,578);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (705,40,579);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (706,40,580);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (707,41,581);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (708,41,582);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (709,42,583);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (710,42,584);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (711,43,585);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (712,43,586);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (713,44,587);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (714,44,588);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (715,45,589);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (716,45,590);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (717,46,591);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (718,46,592);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (719,47,593);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (720,47,594);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (721,48,595);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (723,48,596);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (724,49,597);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (725,49,598);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (726,50,599);
Insert into HR.LICENSESCHEDULE (LICENSESCHEDULENUM,LICENSENUM,SCHEDULENUM) values (727,50,600);
REM INSERTING into HR.LICENSEVIDEO
SET DEFINE OFF;
Insert into HR.LICENSEVIDEO (LICENSEVIDEONUM,LICENSENUM,VIDEONUM) values (35,1,13);
Insert into HR.LICENSEVIDEO (LICENSEVIDEONUM,LICENSENUM,VIDEONUM) values (36,1,14);
Insert into HR.LICENSEVIDEO (LICENSEVIDEONUM,LICENSENUM,VIDEONUM) values (37,2,15);
REM INSERTING into HR.MEMBER_ROLE
SET DEFINE OFF;
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (772,'id1',765);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (773,'id1',767);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (774,'id1',768);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (777,'pp',767);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (780,'ss',768);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (781,'pp',768);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (769,'docker',763);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (770,'docker',764);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (771,'docker',766);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (775,'about',764);
Insert into HR.MEMBER_ROLE (NUM,USERNAME,ROLENUM) values (779,'lol',766);
REM INSERTING into HR.MEMBERFILE
SET DEFINE OFF;
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (161,'lol','83ffa9ff-8944-4886-adf1-c167ef44c2d9_D.jpg','D.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (1,'zcxv','99d123fc-f7ef-48b9-b269-28ab30928a44_먀몸.jpg','먀몸.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (21,'milk','1a97f760-4988-4808-abe8-9595ad5e5060_꽃-구원이.png','꽃-구원이.png');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (41,'ss','ddd4581c-95a5-4498-8a4c-81ae9e018ea0_방향.PNG','방향.PNG');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (61,'pp','49352a78-ca2a-4d50-9bba-15c536362e0a_totoro.jpg','totoro.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (141,'about','05f1b63f-1bda-4c12-92ed-8f351df7b2a1_hi.jpg','hi.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (181,'docker','d3331984-a146-4faf-9e29-7134252f99d0_docker.jpg','docker.jpg');
REM INSERTING into HR.QNA_COMMENT
SET DEFINE OFF;
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (863,588,'ID','asdf',to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (139,282,'ID','구디',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (140,282,'ID','아카데미',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (941,594,null,null,to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (141,282,'ID','스터디',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (142,282,'ID','룸카페',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (241,475,'zz','zzz',to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (125,44,'TEST','TEST',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (221,473,null,null,to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (1004,593,null,null,to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (902,584,'ㅂㅈㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ',to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (201,441,'mh','oo',to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (841,562,'10/12','자격증댓글등록',to_date('22/10/12','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (1021,639,null,'안녕하세요',to_date('22/10/14','RR/MM/DD'));
REM INSERTING into HR.QNAFILE
SET DEFINE OFF;
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('98f81f67-19ea-43cf-b7f7-3b96fa83f100_bg.jpg','bg.jpg',262,362);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('2d3d6f7c-38d3-417a-82e5-299c16b55cf1_bg.jpg','bg.jpg',221,321);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('9b1a11a4-feff-4662-be2c-c3d35cb9f129_bg.jpg','bg.jpg',222,322);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('7af5b844-743a-4185-a0df-48fe7e3f1ed9_bg.jpg','bg.jpg',223,323);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('bfd45d92-88b1-4baf-9617-67fb5dfe036e_bg.jpg','bg.jpg',241,341);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('6b8f2219-aee7-49d0-b5c0-0cd7cfab5b30_bg.jpg','bg.jpg',261,361);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('de6abdc8-7f60-46ad-9ca0-56b2c4209744_bg.jpg','bg.jpg',348,401);
Insert into HR.QNAFILE (FILENAME,ORINAME,NUM,FILENUM) values ('93b8c557-08bb-48d1-b8ce-b31f06adebe0_bg.jpg','bg.jpg',282,381);
REM INSERTING into HR.RESERVATION
SET DEFINE OFF;
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (144,'스터디룸(6인실)','2022-10-19','14:00,15:00,16:00,17:00,18:00',196,4);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (161,'스터디룸(6인실)','2022-10-20','15:00,16:00,17:00',196,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (181,'스터디룸(6인실)','2022-10-20','15:00,16:00,17:00',197,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (141,'스터디룸(4인실)','2022-10-19','16:00,17:00,18:00',193,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (142,'스터디룸(6인실)','2022-10-19','20:00,21:00,22:00,23:00',194,3);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (143,'스터디룸(4인실)','2022-10-19','07:00,08:00,09:00,10:00',193,3);
REM INSERTING into HR.SC_ORDER_USER
SET DEFINE OFF;
Insert into HR.SC_ORDER_USER (ORDERNUM,PRODUCTNUM,NUM,PRODUCTNAME,ORDERDATE,TOTALPRICE,IMP_UID,RESERNUM) values (202210147135657565,196,142,'포르텐스터디카페',to_date('22/10/14','RR/MM/DD'),80000,'imp_976488530311',144);
Insert into HR.SC_ORDER_USER (ORDERNUM,PRODUCTNUM,NUM,PRODUCTNAME,ORDERDATE,TOTALPRICE,IMP_UID,RESERNUM) values (202210145137072566,194,142,'블랙펜슬스터디카페',to_date('22/10/14','RR/MM/DD'),60000,'imp_300367457425',142);
REM INSERTING into HR.SCHEDULE
SET DEFINE OFF;
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (502,'필기 시험일','22/11/14');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (503,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (504,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (505,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (506,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (507,'필기 시험일','23/10/01');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (508,'실기 시험일','23/12/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (509,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (510,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (511,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (512,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (513,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (514,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (515,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (516,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (517,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (518,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (519,'필기 시험일','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (520,'실기 시험일','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (521,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (522,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (523,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (524,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (525,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (526,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (527,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (528,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (529,'필기 시험일','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (530,'실기 시험일','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (531,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (532,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (533,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (534,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (535,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (536,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (537,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (538,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (539,'필기 시험일','23/04/30');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (540,'실기 시험일','23/08/07');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (541,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (501,'실기 시험일','22/10/17');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (542,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (543,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (544,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (545,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (546,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (547,'필기 시험일','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (548,'실기 시험일','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (549,'필기 시험일','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (550,'실기 시험일','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (551,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (552,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (553,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (554,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (555,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (556,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (557,'필기 시험일','23/01/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (558,'실기 시험일','23/05/20');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (559,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (560,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (561,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (562,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (563,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (564,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (565,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (566,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (567,'필기 시험일','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (568,'실기 시험일','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (569,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (570,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (571,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (572,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (573,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (574,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (575,'필기 시험일','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (576,'실기 시험일','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (577,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (578,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (579,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (580,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (581,'필기 시험일','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (582,'실기 시험일','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (583,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (584,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (585,'필기 시험일','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (586,'실기 시험일','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (587,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (588,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (589,'필기 시험일','23/04/24');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (590,'실기 시험일','23/08/07');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (591,'필기 시험일','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (592,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (593,'필기 시험일','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (594,'실기 시험일','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (595,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (596,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (597,'필기 시험일','23/09/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (598,'실기 시험일','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (599,'필기 시험일','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (600,'실기 시험일','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (601,'필기 시험일','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (602,'실기 시험일','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (961,'필기 시험일','2022/12/14');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (1121,'201','123');
REM INSERTING into HR.SCPAY
SET DEFINE OFF;
Insert into HR.SCPAY (PAYNUM,NUM,ORDERNUM,PAYMETHOD,PAYNAME,PAYDATE,PAYAMOUNT) values (244,142,202210147135657565,'point','포르텐스터디카페',to_date('22/10/14','RR/MM/DD'),80000);
Insert into HR.SCPAY (PAYNUM,NUM,ORDERNUM,PAYMETHOD,PAYNAME,PAYDATE,PAYAMOUNT) values (242,142,202210145137072566,'point','블랙펜슬스터디카페',to_date('22/10/14','RR/MM/DD'),60000);
REM INSERTING into HR.SIMPLEMEMBERS
SET DEFINE OFF;
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (61,'전하준','junsolhee7@naver.com','010-9510-0258');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (9,'?','sdfjkl658@naver.com','null');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (10,'박민호','sdfjkl658@naver.com','010-9284-7490');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (101,'은상현','tkdgus968@naver.com','010-9306-9690');
REM INSERTING into HR.STUDYCAFE
SET DEFINE OFF;
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (85,'서울시 금천구','토박이비즈스터디카페','cafe1.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (86,'서울시 금천구','블랙펜슬스터디카페','cafe2.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (87,'서울시 금천구','포르텐스터디카페','cafe3.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (88,'서울시 금천구','그루브스터디카페','cafe4.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (89,'서울시 금천구','스카이캐슬스터디카페','cafe5.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (90,'서울시 금천구','에이블스터디카페','cafe6.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (91,'서울시 금천구','속공스터디카페','cafe7.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (92,'서울시 금천구','온탑스터디카페','cafe8.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (93,'서울시 금천구','헤라스터디카페','cafe9.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (94,'서울시 금천구','페이징스터디카페','cafe10.jpg');
REM INSERTING into HR.STUDYCAFEDETAIL
SET DEFINE OFF;
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (193,20000,'서울 금천구 디지털로9길 47 한신아이티타워2차 ','토박이비즈스터디카페','토박이비즈스터디카페 가산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe1.jpg',37.479516,126.8858699);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (194,20000,'서울 금천구 가산로 106 두산뉴그린상가 11층','블랙펜슬스터디카페','블랙펜슬스터디카페 가산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe2.jpg',37.4753004,126.8937369);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (196,20000,'서울 금천구 시흥대로39길 45 14층','포르텐스터디카페','포르텐스터디카페 시흥점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe3.jpg',37.4518527,126.9020358);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (197,20000,'서울 금천구 벚꽃로 104 금천롯데타워','그루브스터디카페','그루브스터디카페 독산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe4.jpg',37.4675031,126.8898741);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (198,20000,'서울 금천구 시흥대로 291 1267호','스카이캐슬스터디카페','스카이캐슬스터디카페 독산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe5.jpg',37.4506854,126.9012586);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (199,20000,'서울 금천구 시흥대로 469 13층','에이블스터디카페','에이블스터디카페 독산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe6.jpg',37.4754413,126.8981488);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (200,20000,'서울 금천구 범안로17길 23 우정오피스텔 12층','속공스터디카페','속공스터디카페 독산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe7.jpg',37.4675345,126.8939929);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (201,20000,'서울 금천구 시흥대로 1158 3층','온탑스터디카페','온탑스터디카페 시흥점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe8.jpg',37.44813,126.9035155);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (202,20000,'서울 금천구 시흥대로 1204','헤라스터디카페','헤라스터디카페 시흥점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe9.jpg',37.4521867,126.9018852);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (203,20000,'서울 금천구 범안로 1142 3층','페이징스터디카페','페이징스터디카페 독산점입니다.
다양한 좌석을 자유석으로 이용 가능합니다 !
맛있는 원두커피! 다양한 음료도 준비되어 있어요','cafe10.jpg',37.480294,126.9094767);
REM INSERTING into HR.STUDYROOMDETAIL
SET DEFINE OFF;
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (101,3,'스터디룸(4인실)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (102,2,'스터디룸(6인실)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (103,2,'스터디룸(8인실)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (104,1,'스터디룸(10인실)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (105,1,'스터디룸(12인실)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (106,3,'스터디룸(6인실)',194);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (107,3,'스터디룸(6인실)',196);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (108,3,'스터디룸(6인실)',197);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (109,3,'스터디룸(6인실)',198);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (110,3,'스터디룸(6인실)',199);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (111,3,'스터디룸(6인실)',200);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (112,3,'스터디룸(6인실)',201);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (113,3,'스터디룸(6인실)',202);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (114,3,'스터디룸(6인실)',203);
REM INSERTING into HR.VIDEO
SET DEFINE OFF;
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (12,'정보처리기사','https://www.youtube.com/embed/oW2hMQTVgfw');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (13,'정보처리기사','https://www.youtube-nocookie.com/embed/JhKOsZuMDWs');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (14,'정보처리기사','https://www.youtube-nocookie.com/embed/ySvnDSrQoho');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (15,'전기기사','https://www.youtube.com/embed/Qzi4ByR0R_w');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (965,'나나나','https://www.youtube.com/embed/QWsh5qUSrkM');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1078,'정보처리기사','https://www.youtube.com/embed/obYRnoYAouk');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1079,'ㅎㅇㅎㅇ','https://www.youtube.com/embed/obYRnoYAouk');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1081,'ㅂㅇㅂㅇ','https://www.youtube.com/embed/baJEnXpLei4');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1083,'ㅂㅈㄷㅂㄷ','https://www.youtube.com/embed/baJEnXpLei4');
--------------------------------------------------------
--  DDL for Index AR_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AR_NUM_PK" ON "HR"."ADMINROLE" ("ROLENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AREA_AREANAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AREA_AREANAME_PK" ON "HR"."AREA" ("AREANAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index B_BOOKNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."B_BOOKNUM_PK" ON "HR"."BOOK" ("BOOKNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index J_JOBNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."J_JOBNUM_PK" ON "HR"."JOB" ("JOBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LB_LICENSEBOOKNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LB_LICENSEBOOKNUM_PK" ON "HR"."LICENSEBOOK" ("LICENSEBOOKNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007735
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007735" ON "HR"."LICENSEBOOK" ("BOOKNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LJ_LICENSEJOBNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LJ_LICENSEJOBNUM_PK" ON "HR"."LICENSEJOB" ("LICENSEJOBNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LL_LIKENUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LL_LIKENUM_PK" ON "HR"."LICENSELIKE" ("LIKENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007828
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007828" ON "HR"."LICENSELIKE" ("NUM", "LICENSENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LICENSELIST_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LICENSELIST_NUM_PK" ON "HR"."LICENSELIST" ("LICENSENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LICENSELIST_NUM_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LICENSELIST_NUM_U" ON "HR"."LICENSELIST" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LICENSEMEMBERS_USERNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LICENSEMEMBERS_USERNAME_PK" ON "HR"."LICENSEMEMBERS" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LICENSEMEMBERS_NUM_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LICENSEMEMBERS_NUM_U" ON "HR"."LICENSEMEMBERS" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LQ_QNANUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LQ_QNANUM_PK" ON "HR"."LICENSEQNA" ("QNANUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LR_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LR_NUM_PK" ON "HR"."LICENSEROLE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LS_LICENSESCHEDULENUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LS_LICENSESCHEDULENUM_PK" ON "HR"."LICENSESCHEDULE" ("LICENSESCHEDULENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007747
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007747" ON "HR"."LICENSESCHEDULE" ("SCHEDULENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LV_LICENSEVIDEONUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LV_LICENSEVIDEONUM_PK" ON "HR"."LICENSEVIDEO" ("LICENSEVIDEONUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007740
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007740" ON "HR"."LICENSEVIDEO" ("VIDEONUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MR_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MR_NUM_PK" ON "HR"."MEMBER_ROLE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBERFILE_FILENUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MEMBERFILE_FILENUM_PK" ON "HR"."MEMBERFILE" ("FILENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index QNAFILE_FILENUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."QNAFILE_FILENUM_PK" ON "HR"."QNAFILE" ("FILENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RES_RESERNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RES_RESERNUM_PK" ON "HR"."RESERVATION" ("RESERNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SCU_ORDERNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SCU_ORDERNUM_PK" ON "HR"."SC_ORDER_USER" ("ORDERNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_SCHEDULENUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."S_SCHEDULENUM_PK" ON "HR"."SCHEDULE" ("SCHEDULENUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SCPAY_PAYNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SCPAY_PAYNUM_PK" ON "HR"."SCPAY" ("PAYNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SM_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SM_NUM_PK" ON "HR"."SIMPLEMEMBERS" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SC_SCNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SC_SCNAME_PK" ON "HR"."STUDYCAFE" ("SCNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SC_SCNUM_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SC_SCNUM_U" ON "HR"."STUDYCAFE" ("SCNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SCD_DETAILNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SCD_DETAILNUM_PK" ON "HR"."STUDYCAFEDETAIL" ("DETAILNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SRD_ROOMNUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SRD_ROOMNUM_PK" ON "HR"."STUDYROOMDETAIL" ("ROOMNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index V_VIDEONUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."V_VIDEONUM_PK" ON "HR"."VIDEO" ("VIDEONUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ADMINROLE
--------------------------------------------------------

  ALTER TABLE "HR"."ADMINROLE" MODIFY ("ROLENAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."ADMINROLE" ADD CONSTRAINT "AR_NUM_PK" PRIMARY KEY ("ROLENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "HR"."AREA" MODIFY ("AREANUM" NOT NULL ENABLE);
  ALTER TABLE "HR"."AREA" ADD CONSTRAINT "AREA_AREANAME_PK" PRIMARY KEY ("AREANAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."BOOK" MODIFY ("BOOKNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "B_BOOKNUM_PK" PRIMARY KEY ("BOOKNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB
--------------------------------------------------------

  ALTER TABLE "HR"."JOB" MODIFY ("JOBNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB" ADD CONSTRAINT "J_JOBNUM_PK" PRIMARY KEY ("JOBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEBOOK
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEBOOK" ADD CONSTRAINT "LB_LICENSEBOOKNUM_PK" PRIMARY KEY ("LICENSEBOOKNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSEBOOK" ADD UNIQUE ("BOOKNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEJOB
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEJOB" ADD CONSTRAINT "LJ_LICENSEJOBNUM_PK" PRIMARY KEY ("LICENSEJOBNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSELIKE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSELIKE" ADD CONSTRAINT "LL_LIKENUM_PK" PRIMARY KEY ("LIKENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSELIKE" ADD UNIQUE ("NUM", "LICENSENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSELIST
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSELIST" ADD CONSTRAINT "LICENSELIST_NUM_PK" PRIMARY KEY ("LICENSENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSELIST" ADD CONSTRAINT "LICENSELIST_NUM_U" UNIQUE ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEMEMBERS
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEMEMBERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEMEMBERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEMEMBERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEMEMBERS" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEMEMBERS" ADD CONSTRAINT "LICENSEMEMBERS_USERNAME_PK" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSEMEMBERS" ADD CONSTRAINT "LICENSEMEMBERS_NUM_U" UNIQUE ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEQNA
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEQNA" MODIFY ("TITLE" CONSTRAINT "LQ_TITLE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEQNA" MODIFY ("WRITER" CONSTRAINT "LQ_WRITER_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."LICENSEQNA" ADD CONSTRAINT "LQ_QNANUM_PK" PRIMARY KEY ("QNANUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEROLE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEROLE" ADD CONSTRAINT "LR_NUM_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSESCHEDULE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSESCHEDULE" ADD CONSTRAINT "LS_LICENSESCHEDULENUM_PK" PRIMARY KEY ("LICENSESCHEDULENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSESCHEDULE" ADD UNIQUE ("SCHEDULENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICENSEVIDEO
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEVIDEO" ADD CONSTRAINT "LV_LICENSEVIDEONUM_PK" PRIMARY KEY ("LICENSEVIDEONUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LICENSEVIDEO" ADD UNIQUE ("VIDEONUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBER_ROLE" ADD CONSTRAINT "MR_NUM_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBERFILE
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBERFILE" ADD CONSTRAINT "MEMBERFILE_FILENUM_PK" PRIMARY KEY ("FILENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_COMMENT
--------------------------------------------------------

  ALTER TABLE "HR"."QNA_COMMENT" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNAFILE
--------------------------------------------------------

  ALTER TABLE "HR"."QNAFILE" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."QNAFILE" MODIFY ("ORINAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."QNAFILE" MODIFY ("NUM" NOT NULL ENABLE);
  ALTER TABLE "HR"."QNAFILE" ADD CONSTRAINT "QNAFILE_FILENUM_PK" PRIMARY KEY ("FILENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION" ADD CONSTRAINT "RES_RESERNUM_PK" PRIMARY KEY ("RESERNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SC_ORDER_USER
--------------------------------------------------------

  ALTER TABLE "HR"."SC_ORDER_USER" MODIFY ("PRODUCTNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SC_ORDER_USER" ADD CONSTRAINT "SCU_ORDERNUM_PK" PRIMARY KEY ("ORDERNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "HR"."SCHEDULE" MODIFY ("SCHEDULENAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCHEDULE" MODIFY ("SCHEDULEDATE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCHEDULE" ADD CONSTRAINT "S_SCHEDULENUM_PK" PRIMARY KEY ("SCHEDULENUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCPAY
--------------------------------------------------------

  ALTER TABLE "HR"."SCPAY" MODIFY ("NUM" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCPAY" MODIFY ("PAYMETHOD" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCPAY" MODIFY ("PAYNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCPAY" MODIFY ("PAYDATE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCPAY" MODIFY ("PAYAMOUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."SCPAY" ADD CONSTRAINT "SCPAY_PAYNUM_PK" PRIMARY KEY ("PAYNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SIMPLEMEMBERS
--------------------------------------------------------

  ALTER TABLE "HR"."SIMPLEMEMBERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SIMPLEMEMBERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."SIMPLEMEMBERS" ADD CONSTRAINT "SM_NUM_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDYCAFE
--------------------------------------------------------

  ALTER TABLE "HR"."STUDYCAFE" ADD CONSTRAINT "SC_SCNAME_PK" PRIMARY KEY ("SCNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."STUDYCAFE" ADD CONSTRAINT "SC_SCNUM_U" UNIQUE ("SCNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDYCAFEDETAIL
--------------------------------------------------------

  ALTER TABLE "HR"."STUDYCAFEDETAIL" MODIFY ("CDREGION" NOT NULL ENABLE);
  ALTER TABLE "HR"."STUDYCAFEDETAIL" MODIFY ("SCEXPLAIN" NOT NULL ENABLE);
  ALTER TABLE "HR"."STUDYCAFEDETAIL" ADD CONSTRAINT "SCD_DETAILNUM_PK" PRIMARY KEY ("DETAILNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDYROOMDETAIL
--------------------------------------------------------

  ALTER TABLE "HR"."STUDYROOMDETAIL" ADD CONSTRAINT "SRD_ROOMNUM_PK" PRIMARY KEY ("ROOMNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "HR"."VIDEO" ADD CONSTRAINT "V_VIDEONUM_PK" PRIMARY KEY ("VIDEONUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSEBOOK
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEBOOK" ADD CONSTRAINT "LB_BOOKNUM_FK" FOREIGN KEY ("BOOKNUM")
	  REFERENCES "HR"."BOOK" ("BOOKNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSEJOB
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEJOB" ADD CONSTRAINT "LJ_JOBNUM_FK" FOREIGN KEY ("JOBNUM")
	  REFERENCES "HR"."JOB" ("JOBNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSELIKE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSELIKE" ADD CONSTRAINT "LL_NUM_FK" FOREIGN KEY ("NUM")
	  REFERENCES "HR"."LICENSEMEMBERS" ("NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSEMEMBERS
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEMEMBERS" ADD CONSTRAINT "LICENSEMEMBERS_AN_FK" FOREIGN KEY ("AREANAME")
	  REFERENCES "HR"."AREA" ("AREANAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSEROLE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEROLE" ADD CONSTRAINT "LR_USERNAME_FK" FOREIGN KEY ("USERNAME")
	  REFERENCES "HR"."LICENSEMEMBERS" ("USERNAME") ENABLE;
  ALTER TABLE "HR"."LICENSEROLE" ADD CONSTRAINT "LR_ROLENUM_FK" FOREIGN KEY ("ROLENUM")
	  REFERENCES "HR"."ADMINROLE" ("ROLENUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSESCHEDULE
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSESCHEDULE" ADD CONSTRAINT "LS_SCHEDULENUM_FK" FOREIGN KEY ("SCHEDULENUM")
	  REFERENCES "HR"."SCHEDULE" ("SCHEDULENUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICENSEVIDEO
--------------------------------------------------------

  ALTER TABLE "HR"."LICENSEVIDEO" ADD CONSTRAINT "LV_VIDEONUM_FK" FOREIGN KEY ("VIDEONUM")
	  REFERENCES "HR"."VIDEO" ("VIDEONUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBER_ROLE" ADD CONSTRAINT "MR_UN_FK" FOREIGN KEY ("USERNAME")
	  REFERENCES "HR"."BANKMEMBERS" ("USERNAME") ENABLE;
  ALTER TABLE "HR"."MEMBER_ROLE" ADD CONSTRAINT "MR_RN_FK" FOREIGN KEY ("ROLENUM")
	  REFERENCES "HR"."ROLE" ("ROLENUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBERFILE
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBERFILE" ADD CONSTRAINT "MEMBERFILE_USERNAME_FK" FOREIGN KEY ("USERNAME")
	  REFERENCES "HR"."BANKMEMBERS" ("USERNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNAFILE
--------------------------------------------------------

  ALTER TABLE "HR"."QNAFILE" ADD CONSTRAINT "QNAFILE_NUM_FK" FOREIGN KEY ("NUM")
	  REFERENCES "HR"."NOTICE" ("NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SC_ORDER_USER
--------------------------------------------------------

  ALTER TABLE "HR"."SC_ORDER_USER" ADD CONSTRAINT "SCU_NUM_FK" FOREIGN KEY ("NUM")
	  REFERENCES "HR"."LICENSEMEMBERS" ("NUM") ENABLE;
  ALTER TABLE "HR"."SC_ORDER_USER" ADD CONSTRAINT "SCU_RESERNUM_FK" FOREIGN KEY ("RESERNUM")
	  REFERENCES "HR"."RESERVATION" ("RESERNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDYCAFE
--------------------------------------------------------

  ALTER TABLE "HR"."STUDYCAFE" ADD CONSTRAINT "SC_AREANUM_FK" FOREIGN KEY ("AREANAME")
	  REFERENCES "HR"."AREA" ("AREANAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDYCAFEDETAIL
--------------------------------------------------------

  ALTER TABLE "HR"."STUDYCAFEDETAIL" ADD CONSTRAINT "SCD_SCNAME_FK" FOREIGN KEY ("SCNAME")
	  REFERENCES "HR"."STUDYCAFE" ("SCNAME") ENABLE;
      
----------------------------01.시퀀스초기화---------------------------------------
CREATE SEQUENCE AREA_SEQ;
CREATE SEQUENCE ROLE_SEQ;
CREATE SEQUENCE CAFE_SEQ;
CREATE SEQUENCE LI_SEQ;
CREATE SEQUENCE LI_HITS_SEQ;
CREATE SEQUENCE CAFEROOM_SEQ;

