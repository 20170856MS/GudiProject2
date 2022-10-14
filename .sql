--------------------------------------------------------
--  ������ ������ - �ݿ���-10��-14-2022   
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

Insert into HR.AREA (AREANUM,AREANAME) values (1,'����� ������');
Insert into HR.AREA (AREANUM,AREANAME) values (2,'����� ������');
Insert into HR.AREA (AREANUM,AREANAME) values (3,'����� ���ϱ�');
Insert into HR.AREA (AREANUM,AREANAME) values (4,'����� ������');
Insert into HR.AREA (AREANUM,AREANAME) values (5,'����� ���Ǳ�');
Insert into HR.AREA (AREANUM,AREANAME) values (6,'����� ������');
Insert into HR.AREA (AREANUM,AREANAME) values (7,'����� ��õ��');
REM INSERTING into HR.BOOK
SET DEFINE OFF;
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (6,'2022 ������ ����ó�����','http://image.kyobobook.co.kr/images/book/large/286/l9791157676286.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (7,'2022 �ó��� ����ó����� �Ǳ�','https://image.yes24.com/goods/104245816/L',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (8,'2022 �̱��� ����ó����� �ʱ�','https://image.aladin.co.kr/product/28347/7/cover/8931465300_1.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (9,'2022 ������ ������ �ʱ�','http://image.kyobobook.co.kr/images/book/xlarge/663/x9791189728663.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (10,'2022 �ó��� �����ͺм���� �ʱ�','http://image.kyobobook.co.kr/images/book/xlarge/579/x9791190670579.jpg',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (11,'2022 �̱��� ����ó����ɻ� �ʱ�','https://image.aladin.co.kr/product/27877/2/cover500/8931465289_1.jpg',20000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (963,'������� 2022','https://previews.123rf.com/images/oasis15/oasis151506/oasis15150600005/40908970-%EB%B9%88-%EC%B1%85-%ED%91%9C%EC%A7%80.jpg',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1076,'����','https://image.yes24.com/goods/104245816/L',30000);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1085,'123','https://image.yes24.com/goods/104245816/L',2321);
Insert into HR.BOOK (BOOKNUM,BOOKNAME,BOOKIMAGE,BOOKPRICE) values (1123,'������ ����ó�����22','https://image.yes24.com/goods/104245816/L',18000);
REM INSERTING into HR.JOB
SET DEFINE OFF;
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (750,'���б�ɻ�','�� ���б�ɻ�� ����η°��ܿ��� �����ϴ� ���б�ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ������ �̿��� ��⿡�� �Ȱ�, Ȯ���, ī�޶�, ����� �� �ֺ����� ���� ���� �� �ִ� �ͻӸ� �ƴ϶� ����, �Ƿ�ü���, ����������о�, �������о�, ��������źо� ��� ���Ǵ� ���б�� �� �ſ� �پ��ϴ�.
�� �� ������Ż��, ���ֻ�� �� ÷�ܺо߸� �߽����� �� ���ко��� �������� ���б����� ���������� ���ߵǰ� Ȱ��ʿ� ���� ������忡�� ���б�⸦ ����, ����, ����, �˻�, Ȯ�� � �ʼ������� ���Ǵ� ��� ����, ����, �����ϴ� ��ɾ����� ������ ���õ� ����η��� �缺�ϱ� ���� ���б�ɻ� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (751,'�߼۹��������','�� ��� ������� ���ʰ� �Ǵ� ����� ���ϰ� ������ ������������ ������ ����, ����, ��뿡 �̸������ ��� ����� ����Ư���� �����ϰ� �ð��Ǿ�߸� ���輺�� ������ �� �ִ�.
�� ���¼����� Ȯ�忡 �����ϰ� ���°����� �ŷڵ��� ���̱� ���ؼ��� ���������� �š����� �� �������������� ���ʰ� �Ǵ� ���鼳�� �� ���簨���� �������� �ձ��� �ʼ����̴�.
�� �̿� ���� ������ ����ü��� ���Ͽ� �������İ� ǳ���� �ǹ������� ���� ��������η��� �缺�ϱ� ���� �߼۹�������� �ڰ������� �����Ǿ���.
�� �߼۹��������� ��������, �۹������� � ���� ���衤���� ���� ����ϴ� �ְ��� ����ڷ� ����, ����, ����, ��Ű��� �о� �� Ȱ�� ������ �д�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (752,'���������','�� ���������� ������� ����, ���������ȹ�� ����, �ð��������� ������ �������� ���� �� �ַ� ��� ���� ������ �����Ѵ�.
�� ���� �������� �븮�����μ� �ð��ڸ� �븮�Ͽ� ��������� �ϴ� ���ÿ� �����ڿ� ���ؼ��� �ð��ڸ� ����Ͽ� ������ �����ϴ� ������ �Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (753,'�κ��ϵ����߱��','�� 4�� ��������� ��ǥ �о��� �κ� �ι� ���� �η� ���信 �����ϰ��� �κ��ⱸ���߱��, �κ�����Ʈ����߱��, �κ��ϵ����߱�� �� 3�� ������ ���Ӱ� �������.
�� ���� ����� ���Ǵ� �κ��� �����ϱ� ���� �κ� �ϵ���� ��Ű��ó ����, ���߿����� ����̹� ����, ��� ����� ����, ����� �������̽� ����, ������ ����, MCU �ϵ���� ����, ���� ����, ���� ��ȣó���� ���踦 ���� �κ� �ϵ��� �����ϰ�, �κ� �ϵ���� �����򰡿� ���������� �ϴ� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (754,'���������','�� ���������� �ַ� ������ⱸ�� ����, ����, ���� ��� ���⼳�� �����ϴ� ��� �������� �԰�, ũ��, �뷮 ���� �����ϱ� ���� ��� �� �ڷ��� Ȱ�� �׸��� ���⼳���� ����, ���� �� �ù漭 �ۼ�, ���� �� ����, �����۵�, ������ � �־� �������� ���Ұ� ����������� ����ڷμ��� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (755,'������������','�� ���ڻ���� �Ϲ� ������ǰ�������� ��ǻ��, ������, �װ����ֻ���о� �� ���� ��÷�� ��� �̸������ ��������� �������Ͽ� ��� ����� ���ʻ���̶�� �� �� �ִ� ����η��� ���������� ���� ��ΰ���ġ�� â���� �� �ִ� �о��̴�.
�� ���ڻ���� �������� ���� ������ ���ڰ��������� �ߵ����ϱ� ���Ͽ� ���ڱ�⿡ ���� �������� ���İ� ���, ǳ���� �ǹ������� ���� �ֻ���� ��������η��� �缺�ϱ� ���� ������������ �ڰ������� �����Ͽ���.
�� ���Ӿ��� ����� ������ ÷�ܱ���� ���� ���ɰ� ����� ������ ���� ����̳� ������������ ����, ���úо߷��� ������ ���� ������ ��ģ��.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (756,'����ĳ���ɻ�','�� ����ĳ���ɻ�� ����η°��ܿ��� �����ϴ� ����ĳ���ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� CAD(Computer Aided Design)�� ��ǻ�͸� ������ ����Ͽ� ��質 ��ü�� �����ϴ� ������ ������ �⺻���� �ܰ迡������ ���� ������ �ܰ��� �ؼ������� �� ������ ���ļ� ��ǻ�͸� Ȱ���Ͽ� �����ϴ� ����� ���Ѵ�.
�� ����ĳ���ɻ� �ڰ������� �⺻���� ���İ� ����� ���߰� ����, ��� �� ��ǻ�� ���� ������ �� ��ǰ�� ���� �� ������ �� �ִ� ���õ� ����η��� �缺�ϰ��� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (757,'���ڻ�����','�� ���ڻ������ ���ڿ� ���� ��޼��ñ���� �������� ���ڱ�� �� �������� ����ȸ�θ� ����, ������ǰ ���� �� ����, ����, �����ϴ� �۾��� ����Ѵ�.
�� ��ǰ���� �� ����, �˻� ���� �۾������� �����ϴ� ������ �Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (758,'���ڱ���ɻ�','�� ���ڱ���ɻ�� ������, ������, �ڷ�����, ������, ������ �� ���� ���ڱ�⸦ ����, ����, ����, �����ϰ� �����ڵ�ȭ ������ ����������ġ����� ����, ����, �����ϴ� ������ �����Ѵ�.
�� 2016�⵵���ʹ� ������ ������ ������ �ܿ� �����������ε� ���ڱ���ɻ� �ڰ��� ����� �� �ִ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (759,'�ڷ������ð�����','�� �ڷ������ð������ ����ȯ��м�, ��ǰ���߱�ȹ, ��������, ���������, ��������, ������ ����, �ǸŰ���, �ιٿ�� �� �ƿ��ٿ�� ������, �ڷ������� �ý��ۿ���� ������ �����Ѵ�.
�� 2017����� �ڷ������ð����� �ڰ��� ������ �������ܿ� �����������ε� ����� �� �ְ� �Ǿ���.
�� 2022����� �Ǳ���� �������� ������(�ʴ��� + �۾���)���� �ʴ������� ����ȴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (760,'�Ǽ����������','�� �Ǽ������� ���õ� �ڰ� ������ �Ǽ�����������, �Ǽ��������, �Ǽ���������簡 �ִ�. �Ǽ����������� �������� �о߿� ���� ��������ڰ� �����μ�, ���������� ���� ����� �����δ� ���������, �Ǽ����������, �����������, ����������������, �ҹ�����, �ΰ����б����, ������������, ȭ����������簡 �ִ�.
�� �Ǽ����� ������ �Ǽ����� �о߿� ���� �������İ� �ǹ����迡 �԰��� ��ȹ, ����, ����, �м�, ����, �, �ð�, �� �Ǵ� �̿� ���� ����, ���� ���� ������� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (761,'������ɻ�','�� ������ɻ�� ����η°��ܿ��� �����ϴ� ������ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ������ɻ� �ڰ��� ��а����� ���õ� ����, ����, �ü�, ����� �������ʿ� ���� ������ ����� ��� �η��� �缺�ϱ� ���� ������ɻ� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (762,'����������','�� 2021����� ���������� �ڰ�������� �������� �ڰ������� ���ԵǾ�, ������ ������ ���� �ܿ� �����������ε� ����� �� �ִ�.
�� ����������� ��а��� �� ��������� ��������, ������ ����� �� ��޿�� ���� ���� ������ �� �� ���� �� ���������� ����, �Ǹ�, ���� ���� �������� ���������� ���� ���� �� ���� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (763,'����������','�� ���������� �ʿ��� ����忡���� ������� �Ը� ���� 1~2�� �̻��� ���������ڸ� �ݵ�� ��ġ�ؾ� �Ѵ�. ���������� ���� �ڰ����δ� ���п��� ��������� ���õ� �а��� �����ϰų� �������� ���� �������ڵ��� ���������� �Ǵ� ������������� �ڰ����� ����Ͽ��� �Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (764,'�ҹ�����','�� �ҹ������ �������� �о߿� ���� ��������ڰ� �����μ�, ���������� ���� ����� �����δ� ���������, �Ǽ����������, �����������, ����������������, �ҹ�����, �ΰ����б����, ������������, ȭ����������簡 �ִ�.
�� �ҹ������ �ҹ漳�� ���� ���� ���� �������İ� �ǹ����迡 �԰��� ��ȹ, ����, ����, �м�, ����, �, �ð�, ��, �Ǵ� �̿� ���� ����, ���� ���� ��������� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (765,'������������','�� ������������� �������� �о߿� ���� ��������ڰ� �����μ�, ���������� ���� ����� �����δ� ���������, �Ǽ����������, �����������, ����������������, �ҹ�����, �ΰ����б����, ������������, ȭ����������簡 �ִ�.
�� ������������� ������� �о߿� ���� ���� �������İ� �ǹ����迡 �԰��� ��ȹ, ����, ����, �м�, ����, �, �ð�, �� �Ǵ� �̿� ���� ����, ���� ���� ��������� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (766,'������ɻ�','�� 2020����� ������ɻ� �ʱ����� �Ǳ���� ������ ����Ǿ� ����ȴ�. ���� �� ���� ��ɻ� �ʱ������ ���� ��������� �ʱ���� ��ȣ�������� ���� �����򰡷� ����ȴ�.
�� 2017�⵵���� ������ ������ ������ �ܿ� �������� ������ε� ������ɻ� �ڰ��� ����� �� �ִ�.
�� ������ɻ�� �ַ� �̽�Ʈ ���� ��ȿ���� ����Ͽ� ��ȿ������ ��ġ�� ���� ����� �۾��� �ϰ�, ������ɻ�� �ַ� ��ȿ������ ��ġ�� �ʴ� ����ũ, ���� ���� ����� �۾��� �Ѵ�.
�� ������ ���� ���ñ���� ������ �� ������ǰ ������ �ʿ��� ����� ����ǥ �ۼ�, ��� ���� �ϰ� ���� ������ ��� �� �ⱸ�� ����Ͽ� ����, ����, ���, ���� ���� ������ ���� ���� ���� ��ǰ�� ����� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (767,'�̿��','�� ��, �Ӹ��� �Ƹ���� ����� ���Ͽ� ��� �� ����, ����ũ���� ������ �������� ��� �� ��ǰ�� ����Ͽ� �Ϲݹ̿��� �����Ѵ�.
�� �� �� ��ü�� �Ǻθ� �Ƹ���� ���� �� ��ȣ �� ���� �� �����ϱ� ���Ͽ� �� ������ ������ ������ �������� ��� �� ��ǰ�� ����Ͽ� �Ǻι̿��� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (768,'�������濵������','�� �������濵������ �ڰ��� �츮������ ������ �濵�о߿��� ������ �����ڰ��̴�.
�� �������濵������ ������ ó�� �����Ͽ��� 2005�⵵���� ���� ������ �־����� 2011����ʹ� �з±��� ����� �����Ǹ鼭 ������ ������ �� �ְ� �Ǿ���.
�� �������濵������� ���� �� �Ƹ��߾� ������������ �������������� ��ȹ�ϰ� ��ϴ� ������ ����Ѵ�. ���� �������������� Ȯ���� ��ǰȭ�� ������, ���������� �븮�λ���� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (769,'�������۱�ɻ�','�� �������۱�ɻ�� ����η°��ܿ��� �����ϴ� �������۱�ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ���������� �ڵ�ȭ�� �Ѱ谡 �ְ� �ֹ�����, ��ް��� �� �Һ����� �پ��� ��ȣ�� �������Ѿ� �ϴ� ����ǰ���� ������ ���ϱ� ������ �ǿ����� ����� ������� ������ ��� ���������� �� �־�� �Ѵ�. �̿� ���� ���忡�� �������� ������ ������ ���ñ���η��� �缺�ϱ� ���� �������۱�ɻ� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (770,'������ɻ�','�� ������ɻ� �ڰ������� ���б���� ���ν� ������ ������ Ȱ��о߰� Ȯ��ʿ� ���� �λ�, ��������� �߽����� �� ���ñ���η��� �缺�ϱ� ���Ͽ� �����Ͽ���.
�� ������ɻ� �ڰ��� ������ɻ�� ��һ�����ɻ�� �������ٰ� 2003�⿡ ������ ������ɻ� �������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (771,'�μ���','�� �μ���� �����ڰ��� ���� �ڰ� ����η°��ܿ��� �����ϴ� �μ��� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� �μ��� �ڰ��� �ֱ� �μ������ ���ǰ� Ȱ������� �پ������� ���� ���ο� ����� �����ϰ� ���� �μ���� ��� �� �ⱸ�� ���, ����, �� ���� ������ ������ �� �ִ� ��������η��� �缺�ϱ� ���� �����Ͽ���.
�� �ֱ� ���μҵ��� ���, ��ȭ�� �屸�� ����� �μ⹰�� ���ȭ, �پ�ȭ�ǰ�, Ư�� �����ڵ��� ��ȣ�� ��ȭ�� ���� ��ǰ�� �ҷ�ȭ�� �̷������ ������, ���� �� �μ�о��� �ڵ�ȭ, ���ȭ, ��ǻ�͸� �̿��� ���������� �Ϲ�ȭ�Ǹ鼭 ���꼺�� ũ�� ���ǰ� �ִ�.
�� ����, CD ���� ������ �Ű�ü�� ������ �̷������ �ְ�, ��Ʈ��ũ ����� �����ϸ鼭 �������� �μ������ ����. �������, ǰ�� ���, ȯ�� ������ ������ ���� �μ����� �����ϰ� �ִ�.
�� �ֱ� �μ������ ���ǰ� Ȱ������� �پ������� ���� ���ο� ����� �����ϰ� ���� �μ���� ��� �� �ⱸ�� ���, ����, �� ���� ������ ������ �� �ִ� ��������η��� �缺�ϱ� ���� �μ��� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (16,'���Ӱ�����','���� 5�Ⱓ �������α׷����� ����� �ټ� ������ ������ �����ȴ�. ������ PC����, �¶��� ����, ����� ���� �� ���������� �ִµ�, �� �߿����� ����Ʈ���� �̿��� ����� ������ Ȱ��ȭ�Ǹ鼭 �� �о��� ���� �ι��� �η¿� ���� ����� �ټ� ������ ������ �����ȴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (17,'�ݵ�Ŵ���','�ݵ�Ŵ��� ���� �����Ը� ������ ������� �⺻���� �����ڻ��� �þ�� 2000��� ���� ������� �ݸ��� �������鼭 �پ��� ���ڻ�ǰ�� ������ ������ ����� ���� �͵� �ݵ�Ŵ����� ��뿡 ������ ������ ��ĥ �� �ֽ��ϴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (18,'�ǻ�','�����ο� ���ΰǰ���������� ���������͸� Ȱ���� 2020�� ���� 201�� ���� �����Ƿ��η� Ȱ�� ��Ȳ�� �ľ��� �����. �м� ��� �ǻ��� ��� ������ 2��3070�����̾���. �������� ����ϸ� 1922�����̴�. ���� ������ �� �����Ǵ� 2��9428�������� 3����� �����ߴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (19,'��������','BLS�� ������, �̿� ���� ��� �ִ� �� �����ڿ� ���� ���䰡 ��� �����ϰ� �ֽ��ϴ�. BLS�� ������, �� ������ ä���� 2018�⿡�� 2028�� ���̿� 13% ������ ������ ����Ǹ�, �̴� �ٸ� ��� ������ ����� �ξ� ��ȸ�մϴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (20,'�̹߻�','�̹߻�� �ڰݸ��㸦 �����ϰ� ����� ����� ���߸� ���������� �����Ƿ� ����� ����. ����� ���� ����ϴ� �米�� �� �Ӹ����� â���ϴ� ������ ���� �뵿 ����� ���޿� ũ�� ������ ���� �ʴ� �������� �ִ� �����̸�, �ڿ�������ε� ������ ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (21,'�ǻ�','�ǻ��� ����� �ټ� ������ �����̴�. ��ȸ������ ���� �λ� ������ �پ�ȭ�ǰ� �ְ� �� ���� ���� �پ��ϰ� �������� ���������� ���� ������ ���䰡 ����� ������ ���δ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (22,'������','������ ���� �� ���δ� �پ�����. �ѱ����°��縦 ����� ����� ���� ���� ä�뿡 �����ϰų�, ������ �������� ����� ���� �־��. �Ǵ� ���� ������������ü, ��������ü, ���⼳��������ü, ������ �����ü, ����������� �����ü , ȯ�漳���ü � ����� �� �־��.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (772,'�������Ǳ�ɻ�','�� �������Ǳ�ɻ�� �־��� ������ ���ڳ� ���� ���� �������ǿ� ��⸦ ����Ͽ� �Է�, ����, ���� ���� �۾��� �����Ͽ� �μ⿡ ������ ���� ����, �����ϴ� ������ �����Ѵ�.
�� ��ü������, �Ƿڹ��� ������ ����ü���� �����ϰ� ���� �� �̹����� �Է��ϸ� �����ġ�� ǥ�۾����� �����۾��� ���� ��ü���� ������ ����, ��, �ڰ�, ��ü, �׸� ���� ������ �����Ͽ� �����۾��� ��ģ �� ��ϸ�ü�� �̿��Ͽ� ����۾��� �����Ѵ�.
�� ������ ���۾��� �����۾� ��ſ� ���������� ��ǻ�� �� �ֺ���⸦ �̿��Ͽ� ���� �� �����ġ�� ��ĳ�ʸ� �̿��� �׷����� ó�� ���� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (821,'�ǾƳ�������ɻ�','�� �ǾƳ�������ɻ�� ����η°��ܿ��� �����ϴ� �ǾƳ�������ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
  �� �ǾƳ�������ɻ� �ڰ��� �ǾƳ��� ��� �ǹ��� ���Ҹ��� ��Ȯ�ϰ� ���� ���ؼ��� ����, ����, ���� ���� ���� �����۾��� �ʿ��ϱ� ������ �̷��� ��� ������ ����� ����η��� �缺�ϱ� ���Ͽ� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (822,'������','�� ������� ������縦 ����, �����ϰ�, ���� ���踦 �ϰų� ��Ÿ �ð��� ���� ����� �ڹ��� �� �� �ְ�, ���� �Ƿ��ڿ� �����Ͽ� ������ ���¿� ���迡 ���� �ʿ����� ���� �����ϰ� �������, �δ뼳��, ����� � ���Ͽ� ���������� �����ϴ� ������ �Ѵ�.
  �� ������ ������� ���๰�� ��� �� ������ ������ �����ϰ�, ���ϼ� �ְ� �ǹ��� �Ը�, ��� ��ġ�� �����ϴ� �۾��� �����Ѵ�.
  �� ���� ���赵���� �ۼ��ϰ� �����Ͽ� ������ �Ǵ� �� �۾��ڿ��� �й��ϸ�, �۾������� ����� ��ġ�ϴ��� ���� ���� ���¸� �����ϴ� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (823,'��������ɻ�','�� ��������ɻ� ������ �ʱ���� ���� �Ǳ���� ������ �հݿ��θ� ���Ѵ�.
  �� 2020����� ��������ɻ� �ڰ�������� �������� �ڰ������� ���ԵǾ�, ������ ������ ���� �ܿ� �����������ε� ����� �� �ִ�.
  �� ��������ɻ�� ���� �������� �����踦 ����Ͽ� ������ ���� ������ ö����ũ��Ʈ���� ��Ǫ�� ����, ��ġ �� �Ϲ� ���๰�� ���ܺθ� ����� �����ϴ� �۾��� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (824,'������','�� ������� ����������� ���鿡�� ������ ��, �ӵ�, ��ȣ�� ȿ����, ��ȣ�� ü���� ������ �� ��Ÿ ������¿� ������ ��ġ�� ���ο� ���� ������ �����Ѵ�.
  �� ��Ȱ�� ��������� �̷���� �� �ֵ��� ���θ� �����ϰ� ������� �� �����а� ��е� ������ �뼱�� ���� � ���� ���ݾ����� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (825,'���������',' �� ���������� ���뿡 ���� �������� ����̷��� �������� ������� �� ������ �ľ��� ���� ���� ����� �м��� ����Ѵ�.
  �� ��Ȱ�� ��������� ���� ���α���ü��� ����� ����������� ���� �ٰ����� ��å ���� �� ���ݾ����� �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (831,'����ó�����','�� ����ó������ ������ �ڰݿ���� ���� �ڰ� ����η°��ܿ��� �����ϴ� ����ó����� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.

�� ����� ���α׷��� �����Ͽ� ������ ȿ������ ���̱� ���� ��ǻ�Ϳ� ���� �������� ���İ� ����� ���� ���縦 �缺�ϰ� ���ϱ� ���Ͽ� ����ó����� �ڰ������� �����Ͽ���.

�� �츮����� �Ϻ�, �߱�, ��Ʈ�� 3������ MOU�� ü�������ν� ����ó������ �Ϻ��� ����Ʈ����߱����, �߱��� ����Ʈ�������, ��Ʈ���� ����Ʈ�������� ��ȣ �����Ǵ� �ڰ������� �Ǿ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (1074,'11','222');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (728,'����ó�����','�� ����ó������ ������ �ڰݿ���� ���� �ڰ� ����η°��ܿ��� �����ϴ� ����ó����� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ����� ���α׷��� �����Ͽ� ������ ȿ������ ���̱� ���� ��ǻ�Ϳ� ���� �������� ���İ� ����� ���� ���縦 �缺�ϰ� ���ϱ� ���Ͽ� ����ó����� �ڰ������� �����Ͽ���.
�� �츮����� �Ϻ�, �߱�, ��Ʈ�� 3������ MOU�� ü�������ν� ����ó������ �Ϻ��� ����Ʈ����߱����, �߱��� ����Ʈ�������, ��Ʈ���� ����Ʈ�������� ��ȣ �����Ǵ� �ڰ������� �Ǿ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (729,'������',' �� ������� �����ڰ��� ���� �ڰ� ����η°��ܿ��� �����ϴ� ������ ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ������ �ڰ������� ���⸦ �ո������� ����ϰ� ����� ���� ���ظ� �����ϱ� ���� ���⼳���� ���� �� ����, ����, ������ ���� ����ȭ�� ����η��� �缺�ϰ��� �����Ǿ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (730,'�ѽ�������ɻ�',' �� �ѽ�������ɻ�� ���� ��Ḧ �İ�, �ڸ���, ������, ���� ���߾� �������� ���� �� �̰��� ����Ͽ� ������ ����� ������ �����Ѵ�.
�� ��ü������ �ѽ����� �ι��� ��ӵǾ� ������ ���Ŀ� ���� ��ȹ�� ����� ������ ��Ḧ �����Ͽ� �����ϰ� �˼��ϸ�, ������ ��Ḧ ��������, ������������ ���� �� �����ϴ� �۾��� ���Ѵ�. ���� ������ ��Ḧ ������ �����ⱸ�� ����Ͽ� ���� ������ �����ϰ�, ������ �����ϴ� ��ҿ��� �����ü� �� �ⱸ�� ���������� �����ϰ� �����ϴ� ������ ����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (731,'�����ͺм����',' �� ������ �м����� �����ڰ��� ���� �ڰ� �ѱ������ͺ��̽���������� �����ϴ� ������ �м���� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� �����ͺм����� ������ ���ظ� ������� ������ �м� ��ȹ, ������ ���������塤ó��, ������ �м� �� �ð�ȭ�� �����ϴ� �ǹ��ڸ� ���Ѵ�.
�� ������ ������ �ٽ� ����� ������ ����� Ȱ��ȭ�ϰ� ������ ������ �缺�� ���� ��������ο� ���û �������� 2020�⿡ �ż��Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (732,'����ó����ɻ�','�� ����ó����ɻ�� ����η°��ܿ��� �����ϴ� ����ó����ɻ� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ���� ����ȭ ��ȸ���� ��ǻ�͸� ȿ�������� Ȱ���ϱ� ���� ���α׷��� �����Ͽ� ������ ȿ������ ���̱� ���� ��ǻ�Ϳ� ���� �ʱ� ������ ���İ� ����� ���� ���縦 �缺�ϰ� ���ϱ� ���Ͽ� ����ó����ɻ� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (733,'���������ɻ�','  �� ���������ɻ�� ���� ��Ḧ �İ�, �ڸ���, ������, ���� ���߾� �������� ���� �� �̰��� ����Ͽ� ������ ����� ������ �����Ѵ�.
�� ��ü������ ������� �ι��� ��ӵǾ� ������ ���Ŀ� ���� ��ȹ�� ����� ������ ��Ḧ �����Ͽ� �����ϰ� �˼��ϸ�, ������ ��Ḧ ��������, ������������ ���� �� �����ϴ� �۾��� ���Ѵ�. ���� ������ ��Ḧ ������ �����ⱸ�� ����Ͽ� ���� ������ �����ϰ�, ������ �����ϴ� ��ҿ��� �����ü� �� �ⱸ�� ���������� �����ϰ� �����ϴ� ������ ����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (734,'�Ͻ�������ɻ�','  �� �Ͻ�������ɻ�� ���� ��Ḧ �İ�, �ڸ���, ������, ���� ���߾� �������� ���� �� �̰��� ����Ͽ� ������ ����� ������ �����Ѵ�.
�� ��ü������ �Ͻ����� �ι��� ��ӵǾ� ������ ���Ŀ� ���� ��ȹ�� ����� ������ ��Ḧ �����Ͽ� �����ϰ� �˼��ϸ�, ������ ��Ḧ ��������, ������������ ���� �� �����ϴ� �۾��� ���Ѵ�. ���� ������ ��Ḧ ������ �����ⱸ�� ����Ͽ� ���� ������ �����ϰ�, ������ �����ϴ� ��ҿ��� �����ü� �� �ⱸ�� ���������� �����ϰ� �����ϴ� ������ ����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (735,'�߽�������ɻ�','  �� �߽�������ɻ�� ���� ��Ḧ �İ�, �ڸ���, ������, ���� ���߾� �������� ���� �� �̰��� ����Ͽ� ������ ����� ������ �����Ѵ�.
�� ��ü������ �߽����� �ι��� ��ӵǾ� ������ ���Ŀ� ���� ��ȹ�� ����� ������ ��Ḧ �����Ͽ� �����ϰ� �˼��ϸ�, ������ ��Ḧ ��������, ������������ ���� �� �����ϴ� �۾��� ���Ѵ�. ���� ������ ��Ḧ ������ �����ⱸ�� ����Ͽ� ���� ������ �����ϰ�, ������ �����ϴ� ��ҿ��� �����ü� �� �ⱸ�� ���������� �����ϰ� �����ϴ� ������ ����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (736,'��Ƽ�̵������������������',' �� �ֱ� ��Ƽ�̵� ���� ������ �����ϸ鼭 ��Ƽ�̵������������������ �ڰ������� ���� ���� ���� Ŀ���� �ִ�.
�� ��Ƽ�̵�������������������� ����, ����, ������ �� ����� �ð��� û������ ���� �� �ִ� ��Ƽ�̵����� ����, ����, �����ϴ� �ڰ��̴�.
�� ��Ƽ�̵�������������������� ��Ƽ�̵�������������� ���� �����η��� �缺�ϱ� ���� ������ �����ڰ������̴�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (737,'�������������','�� ���� ����ȭ��ȸ������ ���İ� ������ ���� ����Ǿ� �۾����� �������� �޼��ϰ� �����ϰ�, ���� ������ ����ȭ�� �䱸�� ��ǻ�� ����� ����ȭ�Ǹ鼭 ��ǻ�ͻ���� �޼ӵ��� Ȯ��Ǿ���.
�� ��ǻ�͸� ȿ�������� Ȱ���ϱ� ���ؼ��� �ϵ����Ӹ� �ƴ϶� ������ ����Ʈ��� �ʿ��ϰ�, ��Ȱ�� ���� ������ ȿ������ �߱��ϴ� ����ȭ ��ȸ�� �����ϱ� ���ؼ��� ��ǻ�� ���α׷��ֿ� ���� �������� ���İ� ����� ������ �η��� �䱸�ȴ�.
�� �̿� ���� ����ó�� ������ ȿ������ ���̰�, �� ������ ���� ������ �ý����� ��ġ ��ϱ� ���� ��ǻ�Ϳ� ���� �������� ���İ� ����� ���� ��������η��� �缺�ϱ� ���� ������������� �ڰ������� �����Ǿ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (738,'�繫�ڵ�ȭ������','�� �繫�ڵ�ȭ������ ������ ��ǻ�Ϳ� ���� �繫�ڵ�ȭ��⸦ �̿��Ͽ� �繫ȯ�濡�� �ʿ�� �ϴ� �������� �� �繫ó�� ���� ��ȹ, ���� �� ����� ������ �� �ִ� �ɷ��� ���Ѵ�.
�� �繫�ڵ�ȭ������� �繫ó���� ��ǻ�� �� ��ǻ������� ����� �߽����� �� ��� �繫�ڵ�ȭ �ǹ��� �繫�ڵ�ȭ��� �� ���̵�� �͹̳� ���� �繫������⸦ Ȱ���Ͽ� �繫�ɷ��� �ش�ȭ�� �� �ֵ��� ���������� ����, �����ϴ� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (739,'����������ɻ�','�� ����������ɻ�� �繫������ ȿ������ �����ϱ� ���� ���� ������ ��ȯ������ ���ο� ��ǻ��, �ѽùи�, �����, ���ձ�, ȭ����Žý���, �����ؽ��ý���, ��������ġ ���� �����ϰ� Ȱ���ϴ� �ڰ��̴�.
�� �������α׷��̳� ���ο� ����� ��������� ����� �����ϰ�, ��ǻ�� �� ������� ���� ��������� Ȱ���Ͽ�, ������� �� �������� ��ġ, ����, ����, ����, �˻�, ����, ����, ���� � ���� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (740,'����ó��������','�� ����ó��������� ����η°��ܿ��� �����ϴ� ����ó�������� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� ��ǻ�͸� ȿ�������� Ȱ���ϱ� ���ؼ� �ϵ����Ӹ� �ƴ϶� ������ ����Ʈ��� �ʿ��ϴ�. �̿� ���� ����� ���α׷��� �����Ͽ� ������ ȿ������ ���̰�, �ñ������� ���������� �̹����ϱ� ���ؼ� ��ǻ�Ϳ� ���� �������� ���İ� ����� ���� ����� �缺�� �������� ����ó�������� �ڰ������� �����Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (741,'���ڰ�������������','�� 2020����� ����ó����� ��������� ����Ǹ鼭, ����ó������ ���ڰ��������������� ��������̾��� �����ڰ��ⱸ���� �� ���ü�衱 ��������� ���� �������� �ʴ´�.
�� ���ڰ�������������� ���ڰ��⸦ �����ϴ� H/W �ý��۰� �� ���� S/W �ý����� ���� �� ������ �׿� ���� ȿ������ ���� �ý����� ��ġ, ��ϰ� ���ڰ��� ������ ����, �����ϴ� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (742,'��ǻ�ͽý�����������','�� �����ȸ�� �ſ� �޼��� �ߴ��ϰ� �ִµ�, ���ȭ, ����ȭ, ����ȭ ��ȸ���� ó���ؾ� �ϴ� ������ ���� �����ϸ鼭 ��Ը� ������� �����ϰ� �ִ�.
�� ������ű���� �������� ��ǻ���� ������ ���ǰ� ��ǻ�� ������ Ȯ�뿡 ���� ��ǻ�� ����� �ߴ��� ���ڻ���� �ѾƷ� �� ���� �� ����ȭ�Ǿ� ���� �ִ�.
�� ������ ������� ���� ���ڰ��������� �����ϱ� ���Ͽ� ��ǻ�� �ý��ۿ� ���� �������� ���İ� ���, ǳ���� �ǹ������� ���� ��������η��� �缺�ϰ��� ��ǻ�ͽý����������� �ڰ������� �����Ǿ���.
�� ���ڰ�������� ���ڰ��������������簡 2012����� ��ǻ�ͽý������������ ���յǾ� ����ǰ� �ִ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (743,'3D�����Ͱ��߻�����','�� 2021����� 3D�����Ͱ��߻����� �ڰ�������� �������� �ڰ������� ���ԵǾ�, ������ ������ ���� �ܿ� �����������ε� ����� �� �ִ�.
�� 3D�����ʹ� 3���� ���赵�� �������� ��ü������ ������ �μ��ϴ� �����ü�� ���ϰ�, 3D�������� 3D�����ͷ� ��ü���� ������ �������ϰ� �μ��ϴ� ��� ������ ���Ѵ�.
�� 3D�����Ͱ��߻������ 3D�������� ȸ�� �� �����ġ, ���α׷� ���� �����ϰ� �����ϴ� �ɷ��� ���ϸ�, ������ �ʱ����� ������ �Ǳ�������� ����ȴ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (744,'���б�������','�� ���а��� �ڰ������� ���ÿ����� �����ϴ� ���Ȱ�硯�� ����η°��ܿ��� �����ϴ� �����б�ɻ硯, �����б������硯, �����б�硯�� �ִ�.
�� ���б�������� ���б�⿡ ���� �������İ� ���ʱ�� �� �������� �κ��� ��������� �������� �־Ȱ�, �߽����, ������ī�޶� �� ���� �� ��� ���б�⸦ �����ϰ� �����ϴ� �۾��� �����ϰ�, �̿� ���õ� ������ ��� ������ ����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (745,'�κ��ⱸ���߱��','�� 4�� ��������� ��ǥ �о��� �κ� �ι� ���� �η� ���信 �����ϰ��� �κ��ⱸ���߱��, �κ�����Ʈ����߱��, �κ��ϵ����߱�� �� 3�� ������ ���Ӱ� �������.
�� �κ� �������� �䱸������ �ľ��ϰ�, �̸� �������� ��� ȯ�� �� ���� ����, �κ� �ⱸ �� �ֺ���ġ ����, ��ǰ ���� �� �ⱸ ����, ������ �ؼ� �� ���� ���� ���� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (746,'�ݵ�ü���������','�� �ݵ�ü���������� ȸ�μ�����, ȸ�μ������Ʈ����Ȱ��, �ݵ�ü������ ���� ������ ���� �� �ݵ�ü ���� ������ ���� ����������İ� ���ñ���� �������� ������ �� �Ƴ��α� ȸ�θ� �ݵ�ü ����ȸ�θ� �����ϱ� �������� �ܰ迡 �ش�Ǵ� ���ݺ� �� �Ĺݺ� ���� ������ �̿� ���õ� ���� ����Ʈ��� Ȱ���ϴ� �۾��� �����Ѵ�.
�� �ݵ�ü����������� ��������̴� �ݵ�ü������ �ڰ��� ����������� 2022����� �����Ǿ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (747,'�ǰ����','�� �ǰ����� �����ڰ��� ���� �ڰ� ����η°��ܿ��� �����ϴ� �ǰ���� ���迡 �հ��Ͽ� �� �ڰ��� ����� �ڸ� ���Ѵ�.
�� �ǰ���� �ڰ��� �������� ��� ������ ���� ��� ���� �Ƿ��� ����о߿��� ���������� ������ ����ȭ�� ����η��� Ȯ���ϰ��� 2007�⿡ �ż��Ͽ���.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (748,'�Ӻ������','�� �Ӻ���� ���� �Ӻ���� �ý��� �ϵ��� ���� ����, �Ӻ���� ����Ʈ���� �÷���, �Ӻ���� �ý��� ���� ����Ʈ��� ���� ���� ���İ� ���� �� ���� �ɷ��� �������� �Ӻ���� �ý��ۿ� �߿���, �ü���� �̽��ϰ�, ���� ���α׷��� ����, ���� �� �׽�Ʈ�� �����ϴ� ���� �Ǵ� �̿� ���õ� ������ ������ �����Ѵ�.
�� �Ӻ���� �ý����� �ϵ��� �м��Ͽ� �ϵ��� ���� �ʱ�ȭ �� �׽�Ʈ�� �����ϸ�, OS(�ü��) ������ ���� ��Ʈ�δ��� �����ϴ� �߿���� �Ӻ���� �ý����� OS ������ �÷��� ����Ʈ���� �� ���� ����Ʈ��� ����, �����ϴ� ������ �����Ѵ�.');
Insert into HR.JOB (JOBNUM,JOBNAME,JOBINTRO) values (749,'�����ɻ�','�� �����ɻ�� ������� �ڰ��� ������������, ���������, ���������, ������ �ڰ��� ����� ù �ܰ��̴�.
�� �����ɻ�� ���⿡ �ʿ��� ��� �� ������ ����Ͽ� ȸ����, ������, ������ġ �Ǵ� ����, ����, ����, �� ���½ü����� ����, ���̺�, ������ �� �ⱸ�� ��ġ, ����, �˻�, ���� �� �����ϴ� ������ �����Ѵ�.
�� �����ɻ�, ��������ɻ� �ڰ������� �뵿�η� ��217ȣ(2004.12.31.)�� ���� 2006����� �����ɻ�� ���յǾ���.');
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
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (1,'����ó�����');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (2,'�����ɻ�');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (3,'������');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (4,'������');
Insert into HR.LICENSELIST (NUM,LICENSENAME) values (5,'��ǻ��Ȱ��ɷ� 2��');
REM INSERTING into HR.LICENSEMEMBERS
SET DEFINE OFF;
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (41,'����� ��õ��','fpqk1004','$2a$10$4tVJ8bif8xkGtEFEe/.rAuFvLlpOvVjlR6qyNCNXR0OtGRJIMUEP6','��μ�','fpqk1004@naver.com','010-0000-0000');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (8,'����� ������','IDID','$2a$10$Anendch8FUQilVocDxbEW.3MZCItmppnpztsPG0VlBJljVL5LfMpq','IDID','sdfjkl@naver.com','00-00-00-00');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (161,'����� ��õ��','ESH','$2a$10$3U3cz/tDD1PhdtEu1uRUXuvN3JHOENLkjTauHGmeKWisvKiwQvppS','������','tkdgus968@naver.com','010-9306-9690');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (62,'����� ������','junsolhee','$2a$10$Ox4gBXTCA5vxga7QtoDjI.0tKa88VkFM3WG7kyOvRy1MjDqO8zpsy','hajun7','junsolhee7@naver.com','01012341234');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (121,'����� ��õ��','TEST12','$2a$10$SQmFZqnyQEnrAuXR2Bf9SuiS2hbqurcHcN28Psp/mB/JlhamTXFy.','TEST12','TEST12@naver.com','010-1222-1258');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (141,'����� ��õ��','ESHadmin','$2a$10$E6ZJofX9YbIzZjhY7tMm.OS01l6YaiZHfXVJhl6rFCesY/PhgSRB6','ESGE','admin@naver.com','010-1234-5557');
Insert into HR.LICENSEMEMBERS (NUM,AREANAME,USERNAME,PASSWORD,NAME,EMAIL,PHONE) values (142,'����� ��õ��','ID','$2a$10$5rtTdrzdcyMQX7wm1vYqt.mdCgCqHy2tdhlESEHmIKzAqx.yET2Si','����','sdfjkl777@naver.com','010-1234-5678');
REM INSERTING into HR.LICENSEQNA
SET DEFINE OFF;
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (622,2,'���������ε� ������ �ڰ����� ����� �� �ֳ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,622,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (628,5,'����ó����ɻ� ���̵� � ����?','IDID',to_date('22/10/14','RR/MM/DD'),0,628,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (629,5,'����ó����ɻ� �ڰ��� ���ι�� �˷��ּ���.','IDID',to_date('22/10/14','RR/MM/DD'),0,629,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (627,1,'����ó������ ��ǻ�� Ȱ��ɷ� 1�� ��, ��� ���� ����ؾ� �ұ��?','IDID',to_date('22/10/14','RR/MM/DD'),0,627,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (630,5,'����ó����ɻ� ���̵� � ����?','IDID',to_date('22/10/14','RR/MM/DD'),0,630,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (632,4,'�����ͺм���� ����� ������ �ɱ��?','IDID',to_date('22/10/14','RR/MM/DD'),0,632,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (635,4,'�����ͺм���� ���̵��� �����?','IDID',to_date('22/10/14','RR/MM/DD'),0,635,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (636,3,'�ѽ�������ɻ� �������� �־��?','IDID',to_date('22/10/14','RR/MM/DD'),0,636,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (639,3,'�ѽ��������ڰ����̶� �ѽ�������ɻ� �ڰ����̶� ���� �ٸ�����? ','IDID',to_date('22/10/14','RR/MM/DD'),0,639,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (641,1,'�����ͺм����� ����ó����� �� ��� �ڰ����� �� �����ұ��?','qqq',to_date('22/10/14','RR/MM/DD'),0,641,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (642,5,'����ó����ɻ� �Ǳ� �հ� ��ǥ ���� ������ ���� �����ؼ���!','qqq',to_date('22/10/14','RR/MM/DD'),0,642,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (644,5,'����ó����ɻ� �� ���°ǰ���?! ���α׷� �����ؼ���!','qqq',to_date('22/10/14','RR/MM/DD'),0,644,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (624,1,'����ó������� ������ ���ι��� ��Ѱ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,624,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (621,2,'�������� ���̵��� ���ι��� ��Ѱ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,621,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (623,1,'����ó����� ��� �� ���� ���ΰ� �ñ��ؿ�','IDID',to_date('22/10/14','RR/MM/DD'),0,623,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (625,1,'���������ε� ����ó����� �ڰ����� ����� �� �ֳ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,625,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (637,3,'�ѽ�������ɻ� �ڰ��� ��� �� ����� ������ �ɱ��?','IDID',to_date('22/10/14','RR/MM/DD'),0,637,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (640,2,'������ ��� ���� �����Դϴ٤Ф�','qqq',to_date('22/10/14','RR/MM/DD'),0,640,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (643,5,'����ó����ɻ� ��ä���� 60���ε� �հ��Ѱ���?!','qqq',to_date('22/10/14','RR/MM/DD'),0,643,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (585,2,'������ ��� �� ���� ���ΰ� �ñ��ؿ�','IDID',to_date('22/10/12','RR/MM/DD'),0,585,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (421,5,'����ó����ɻ�','ID',to_date('22/09/30','RR/MM/DD'),0,421,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (626,1,'����ó����� �����Ϸ��µ� ���� ���̵��� ���ι���� �ñ��մϴ�.','IDID',to_date('22/10/14','RR/MM/DD'),0,626,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (631,5,'����ó����ɻ�� ����ó��������, ����ó����� ���� ���� �ñ��ؿ�.','IDID',to_date('22/10/14','RR/MM/DD'),0,631,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (633,4,'�����ͺм����� ����ó����� �� ��� �ڰ����� �� �����ұ��?','IDID',to_date('22/10/14','RR/MM/DD'),0,633,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (634,4,'�����ͺм���� �����а��� ��� �ǳ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,634,0,0);
Insert into HR.LICENSEQNA (QNANUM,LICENSENUM,TITLE,WRITER,REGDATE,HIT,REF,STEP,DEPTH) values (638,3,'�ѽ�������ɻ� �Ǳ������ ��� ���� �ǳ���?','IDID',to_date('22/10/14','RR/MM/DD'),0,638,0,0);
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
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (1,'zcxv','99d123fc-f7ef-48b9-b269-28ab30928a44_�ϸ�.jpg','�ϸ�.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (21,'milk','1a97f760-4988-4808-abe8-9595ad5e5060_��-������.png','��-������.png');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (41,'ss','ddd4581c-95a5-4498-8a4c-81ae9e018ea0_����.PNG','����.PNG');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (61,'pp','49352a78-ca2a-4d50-9bba-15c536362e0a_totoro.jpg','totoro.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (141,'about','05f1b63f-1bda-4c12-92ed-8f351df7b2a1_hi.jpg','hi.jpg');
Insert into HR.MEMBERFILE (FILENUM,USERNAME,FILENAME,ORINAME) values (181,'docker','d3331984-a146-4faf-9e29-7134252f99d0_docker.jpg','docker.jpg');
REM INSERTING into HR.QNA_COMMENT
SET DEFINE OFF;
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (863,588,'ID','asdf',to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (139,282,'ID','����',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (140,282,'ID','��ī����',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (941,594,null,null,to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (141,282,'ID','���͵�',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (142,282,'ID','��ī��',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (241,475,'zz','zzz',to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (125,44,'TEST','TEST',to_date('22/09/28','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (221,473,null,null,to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (1004,593,null,null,to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (902,584,'������������','������������',to_date('22/10/13','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (201,441,'mh','oo',to_date('22/10/05','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (841,562,'10/12','�ڰ�����۵��',to_date('22/10/12','RR/MM/DD'));
Insert into HR.QNA_COMMENT (NUM,QNANUM,WRITER,CONTENTS,REGDATE) values (1021,639,null,'�ȳ��ϼ���',to_date('22/10/14','RR/MM/DD'));
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
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (144,'���͵��(6�ν�)','2022-10-19','14:00,15:00,16:00,17:00,18:00',196,4);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (161,'���͵��(6�ν�)','2022-10-20','15:00,16:00,17:00',196,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (181,'���͵��(6�ν�)','2022-10-20','15:00,16:00,17:00',197,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (141,'���͵��(4�ν�)','2022-10-19','16:00,17:00,18:00',193,2);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (142,'���͵��(6�ν�)','2022-10-19','20:00,21:00,22:00,23:00',194,3);
Insert into HR.RESERVATION (RESERNUM,ROOMNAME,SEDATE,SETIME,DETAILNUM,TIMELENGTH) values (143,'���͵��(4�ν�)','2022-10-19','07:00,08:00,09:00,10:00',193,3);
REM INSERTING into HR.SC_ORDER_USER
SET DEFINE OFF;
Insert into HR.SC_ORDER_USER (ORDERNUM,PRODUCTNUM,NUM,PRODUCTNAME,ORDERDATE,TOTALPRICE,IMP_UID,RESERNUM) values (202210147135657565,196,142,'�����ٽ��͵�ī��',to_date('22/10/14','RR/MM/DD'),80000,'imp_976488530311',144);
Insert into HR.SC_ORDER_USER (ORDERNUM,PRODUCTNUM,NUM,PRODUCTNAME,ORDERDATE,TOTALPRICE,IMP_UID,RESERNUM) values (202210145137072566,194,142,'���潽���͵�ī��',to_date('22/10/14','RR/MM/DD'),60000,'imp_300367457425',142);
REM INSERTING into HR.SCHEDULE
SET DEFINE OFF;
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (502,'�ʱ� ������','22/11/14');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (503,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (504,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (505,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (506,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (507,'�ʱ� ������','23/10/01');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (508,'�Ǳ� ������','23/12/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (509,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (510,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (511,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (512,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (513,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (514,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (515,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (516,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (517,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (518,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (519,'�ʱ� ������','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (520,'�Ǳ� ������','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (521,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (522,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (523,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (524,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (525,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (526,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (527,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (528,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (529,'�ʱ� ������','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (530,'�Ǳ� ������','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (531,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (532,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (533,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (534,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (535,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (536,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (537,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (538,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (539,'�ʱ� ������','23/04/30');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (540,'�Ǳ� ������','23/08/07');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (541,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (501,'�Ǳ� ������','22/10/17');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (542,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (543,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (544,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (545,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (546,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (547,'�ʱ� ������','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (548,'�Ǳ� ������','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (549,'�ʱ� ������','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (550,'�Ǳ� ������','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (551,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (552,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (553,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (554,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (555,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (556,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (557,'�ʱ� ������','23/01/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (558,'�Ǳ� ������','23/05/20');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (559,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (560,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (561,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (562,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (563,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (564,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (565,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (566,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (567,'�ʱ� ������','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (568,'�Ǳ� ������','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (569,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (570,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (571,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (572,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (573,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (574,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (575,'�ʱ� ������','23/07/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (576,'�Ǳ� ������','23/10/05');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (577,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (578,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (579,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (580,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (581,'�ʱ� ������','23/07/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (582,'�Ǳ� ������','23/10/08');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (583,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (584,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (585,'�ʱ� ������','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (586,'�Ǳ� ������','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (587,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (588,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (589,'�ʱ� ������','23/04/24');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (590,'�Ǳ� ������','23/08/07');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (591,'�ʱ� ������','23/09/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (592,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (593,'�ʱ� ������','23/06/18');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (594,'�Ǳ� ������','23/09/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (595,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (596,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (597,'�ʱ� ������','23/09/29');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (598,'�Ǳ� ������','23/11/25');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (599,'�ʱ� ������','23/10/03');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (600,'�Ǳ� ������','23/12/02');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (601,'�ʱ� ������','23/07/22');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (602,'�Ǳ� ������','23/10/28');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (961,'�ʱ� ������','2022/12/14');
Insert into HR.SCHEDULE (SCHEDULENUM,SCHEDULENAME,SCHEDULEDATE) values (1121,'201','123');
REM INSERTING into HR.SCPAY
SET DEFINE OFF;
Insert into HR.SCPAY (PAYNUM,NUM,ORDERNUM,PAYMETHOD,PAYNAME,PAYDATE,PAYAMOUNT) values (244,142,202210147135657565,'point','�����ٽ��͵�ī��',to_date('22/10/14','RR/MM/DD'),80000);
Insert into HR.SCPAY (PAYNUM,NUM,ORDERNUM,PAYMETHOD,PAYNAME,PAYDATE,PAYAMOUNT) values (242,142,202210145137072566,'point','���潽���͵�ī��',to_date('22/10/14','RR/MM/DD'),60000);
REM INSERTING into HR.SIMPLEMEMBERS
SET DEFINE OFF;
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (61,'������','junsolhee7@naver.com','010-9510-0258');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (9,'?','sdfjkl658@naver.com','null');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (10,'�ڹ�ȣ','sdfjkl658@naver.com','010-9284-7490');
Insert into HR.SIMPLEMEMBERS (NUM,USERNAME,EMAIL,PHONE) values (101,'������','tkdgus968@naver.com','010-9306-9690');
REM INSERTING into HR.STUDYCAFE
SET DEFINE OFF;
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (85,'����� ��õ��','����̺���͵�ī��','cafe1.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (86,'����� ��õ��','���潽���͵�ī��','cafe2.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (87,'����� ��õ��','�����ٽ��͵�ī��','cafe3.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (88,'����� ��õ��','�׷�꽺�͵�ī��','cafe4.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (89,'����� ��õ��','��ī��ĳ�����͵�ī��','cafe5.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (90,'����� ��õ��','���̺��͵�ī��','cafe6.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (91,'����� ��õ��','�Ӱ����͵�ī��','cafe7.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (92,'����� ��õ��','��ž���͵�ī��','cafe8.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (93,'����� ��õ��','����͵�ī��','cafe9.jpg');
Insert into HR.STUDYCAFE (SCNUM,AREANAME,SCNAME,IMG) values (94,'����� ��õ��','����¡���͵�ī��','cafe10.jpg');
REM INSERTING into HR.STUDYCAFEDETAIL
SET DEFINE OFF;
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (193,20000,'���� ��õ�� �����з�9�� 47 �ѽž���ƼŸ��2�� ','����̺���͵�ī��','����̺���͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe1.jpg',37.479516,126.8858699);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (194,20000,'���� ��õ�� ����� 106 �λ괺�׸��� 11��','���潽���͵�ī��','���潽���͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe2.jpg',37.4753004,126.8937369);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (196,20000,'���� ��õ�� ������39�� 45 14��','�����ٽ��͵�ī��','�����ٽ��͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe3.jpg',37.4518527,126.9020358);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (197,20000,'���� ��õ�� ���ɷ� 104 ��õ�Ե�Ÿ��','�׷�꽺�͵�ī��','�׷�꽺�͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe4.jpg',37.4675031,126.8898741);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (198,20000,'���� ��õ�� ������ 291 1267ȣ','��ī��ĳ�����͵�ī��','��ī��ĳ�����͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe5.jpg',37.4506854,126.9012586);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (199,20000,'���� ��õ�� ������ 469 13��','���̺��͵�ī��','���̺��͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe6.jpg',37.4754413,126.8981488);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (200,20000,'���� ��õ�� ���ȷ�17�� 23 �������ǽ��� 12��','�Ӱ����͵�ī��','�Ӱ����͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe7.jpg',37.4675345,126.8939929);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (201,20000,'���� ��õ�� ������ 1158 3��','��ž���͵�ī��','��ž���͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe8.jpg',37.44813,126.9035155);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (202,20000,'���� ��õ�� ������ 1204','����͵�ī��','����͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe9.jpg',37.4521867,126.9018852);
Insert into HR.STUDYCAFEDETAIL (DETAILNUM,CDPAY,CDREGION,SCNAME,SCEXPLAIN,IMG,LATITUDE,LONGITUDE) values (203,20000,'���� ��õ�� ���ȷ� 1142 3��','����¡���͵�ī��','����¡���͵�ī�� �������Դϴ�.
�پ��� �¼��� ���������� �̿� �����մϴ� !
���ִ� ����Ŀ��! �پ��� ���ᵵ �غ�Ǿ� �־��','cafe10.jpg',37.480294,126.9094767);
REM INSERTING into HR.STUDYROOMDETAIL
SET DEFINE OFF;
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (101,3,'���͵��(4�ν�)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (102,2,'���͵��(6�ν�)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (103,2,'���͵��(8�ν�)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (104,1,'���͵��(10�ν�)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (105,1,'���͵��(12�ν�)',193);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (106,3,'���͵��(6�ν�)',194);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (107,3,'���͵��(6�ν�)',196);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (108,3,'���͵��(6�ν�)',197);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (109,3,'���͵��(6�ν�)',198);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (110,3,'���͵��(6�ν�)',199);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (111,3,'���͵��(6�ν�)',200);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (112,3,'���͵��(6�ν�)',201);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (113,3,'���͵��(6�ν�)',202);
Insert into HR.STUDYROOMDETAIL (ROOMNUM,ROOMCOUNT,ROOMNAME,DETAILNUM) values (114,3,'���͵��(6�ν�)',203);
REM INSERTING into HR.VIDEO
SET DEFINE OFF;
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (12,'����ó�����','https://www.youtube.com/embed/oW2hMQTVgfw');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (13,'����ó�����','https://www.youtube-nocookie.com/embed/JhKOsZuMDWs');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (14,'����ó�����','https://www.youtube-nocookie.com/embed/ySvnDSrQoho');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (15,'������','https://www.youtube.com/embed/Qzi4ByR0R_w');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (965,'������','https://www.youtube.com/embed/QWsh5qUSrkM');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1078,'����ó�����','https://www.youtube.com/embed/obYRnoYAouk');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1079,'��������','https://www.youtube.com/embed/obYRnoYAouk');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1081,'��������','https://www.youtube.com/embed/baJEnXpLei4');
Insert into HR.VIDEO (VIDEONUM,VIDEOTITLE,VIDEOLINK) values (1083,'����������','https://www.youtube.com/embed/baJEnXpLei4');
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
      
----------------------------01.�������ʱ�ȭ---------------------------------------
CREATE SEQUENCE AREA_SEQ;
CREATE SEQUENCE ROLE_SEQ;
CREATE SEQUENCE CAFE_SEQ;
CREATE SEQUENCE LI_SEQ;
CREATE SEQUENCE LI_HITS_SEQ;
CREATE SEQUENCE CAFEROOM_SEQ;

