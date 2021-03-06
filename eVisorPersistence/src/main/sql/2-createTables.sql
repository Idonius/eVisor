 /***********************************************************/
/**************** TABLE CREATION SCRIPT ********************/
/***********************************************************/


/*************		ALARM TABLE		*************/
DROP TABLE ALARM CASCADE CONSTRAINTS;

CREATE TABLE ALARM ( 
	ALARM_ID VARCHAR2(50) NOT NULL,
	DESCRIPTION VARCHAR2 (50) NOT NULL, 
	SUBJECT VARCHAR2(50) NOT NULL,
	MESSAGE VARCHAR2(50) NOT NULL,
	ISLOCK CHAR(1) NOT NULL,
	STANDBYTIME NUMBER(10) NOT NULL,
	LASTCOM DATE NOT NULL,
PRIMARY KEY (ALARM_ID) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		RECEIVERS TABLE		*************/
DROP TABLE RECEIVERS CASCADE CONSTRAINTS;

CREATE TABLE RECEIVERS ( 
	REC_PK NUMBER(19) NOT NULL,
	MAIL VARCHAR2(255) NOT NULL,
PRIMARY KEY (REC_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		ALARM_REC TABLE		*************/
DROP TABLE ALARM_REC CASCADE CONSTRAINTS;

CREATE TABLE ALARM_REC ( 
	ALARM VARCHAR2(50) NOT NULL,
	REC NUMBER(19) NOT NULL,
PRIMARY KEY (ALARM,REC) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		LOG_ALARM TABLE		*************/
DROP TABLE LOG_ALARM CASCADE CONSTRAINTS;

CREATE TABLE LOG_ALARM ( 
	LOG_PK NUMBER(19) NOT NULL,
	ALARM VARCHAR2(50) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	ISLOCK CHAR(1) NOT NULL,
	COMTIME DATE,
	REPORTED VARCHAR2(4000),
	MOREINFO VARCHAR2(4000),
PRIMARY KEY (LOG_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		SERVICES TABLE		*************/
DROP TABLE SERVICES CASCADE CONSTRAINTS;

CREATE TABLE SERVICES ( 
	SERVICE_PK NUMBER(3) NOT NULL,
	DESCRIPTION VARCHAR2(50) NOT NULL,
PRIMARY KEY (SERVICE_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		S_TRANSACTIONS TABLE		*************/
DROP TABLE S_TRANSACTIONS CASCADE CONSTRAINTS;

CREATE TABLE S_TRANSACTIONS ( 
	S_TRANSACTION_PK NUMBER(19) NOT NULL,
	SERVICE  	 NUMBER(3) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	EVENTLOG	 NUMBER(19) NOT NULL,
PRIMARY KEY (S_TRANSACTION_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
  
/*************		EVENTLOGS TABLE		*************/
DROP TABLE EVENTLOGS CASCADE CONSTRAINTS;

CREATE TABLE EVENTLOGS ( 
	EVENTLOG_PK NUMBER(19) NOT NULL,
	STORE_TYPE  VARCHAR2(255) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	LOG_CONTENT BLOB,
	STORETIME DATE,
PRIMARY KEY (EVENTLOG_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;

/*************		SOAPS TABLE		*************/
DROP TABLE SOAPS CASCADE CONSTRAINTS;

CREATE TABLE SOAPS ( 
	SOAP_PK NUMBER(19) NOT NULL,
	S_TRANSACTION NUMBER(19) NOT NULL,
	SOAP_TYPE  NUMBER(1) NOT NULL,
	HASH_ALG VARCHAR2(50) NOT NULL,
	HASH_VAL VARCHAR2(50) NOT NULL,
	CREATIONTIME DATE NOT NULL,
PRIMARY KEY (SOAP_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		T_TRACES TABLE		*************/
DROP TABLE T_TRACES CASCADE CONSTRAINTS;

CREATE TABLE T_TRACES ( 
	T_TRACE_PK NUMBER(19) NOT NULL,
	S_TRANSACTION  NUMBER(19) NOT NULL,
	ACTIONTYPE NUMBER (7) NOT NULL,
	CREATIONTIME DATE NOT NULL,
PRIMARY KEY (T_TRACE_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
   
/*************		ACTIONTYPES TABLE		*************/
DROP TABLE ACTIONTYPES CASCADE CONSTRAINTS;

CREATE TABLE ACTIONTYPES ( 
	ACTIONTYPE_PK NUMBER (7) NOT NULL,
	DESCRIPTION  VARCHAR2(50) NOT NULL,
PRIMARY KEY (ACTIONTYPE_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		T_TRACEFIELDS TABLE		*************/
DROP TABLE T_TRACEFIELDS CASCADE CONSTRAINTS;

CREATE TABLE T_TRACEFIELDS ( 
	T_TRACEFIELD_PK 	NUMBER(19) NOT NULL,
	T_TRACE	NUMBER(19) NOT NULL,
	FIELD  	NUMBER(7) NOT NULL,
	F_VALUE	VARCHAR2(4000) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	F_VALUETYPE	VARCHAR2(255), 
PRIMARY KEY (T_TRACEFIELD_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;  
   
/*************		FIELDS TABLE		*************/
DROP TABLE FIELDS CASCADE CONSTRAINTS;

CREATE TABLE FIELDS ( 
	FIELD_PK 	NUMBER(7) NOT NULL,
	LABEL		VARCHAR2(255) NOT NULL,
	DESCRIPTION  	VARCHAR2(50) NOT NULL, 
PRIMARY KEY (FIELD_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;  
   
/*************		ST_TIMES TABLE		*************/
DROP TABLE ST_TIMES CASCADE CONSTRAINTS;

CREATE TABLE ST_TIMES ( 
	ST_TIME_PK 	NUMBER(19) NOT NULL,
	ST_DATE		DATE NOT NULL,
	CREATIONTIME  	DATE NOT NULL, 
PRIMARY KEY (ST_TIME_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 

   
/*************		ST_GROUPINGS TABLE		*************/
DROP TABLE ST_GROUPINGS CASCADE CONSTRAINTS;

CREATE TABLE ST_GROUPINGS ( 
	ST_GROUPING_PK 	NUMBER(19) NOT NULL,
	ST_TIME			NUMBER(19) NOT NULL,
	ST_SERVICE		NUMBER(3)  NOT NULL,
	ST_APPLICATION	VARCHAR2(255)  NOT NULL,
	TOTAL			NUMBER(19) NOT NULL,
	CREATIONTIME  	DATE NOT NULL, 
	ST_UO        	VARCHAR2(255),
	ST_CODE			VARCHAR2(255),
	ST_ISSIGN		VARCHAR2(50),
	
PRIMARY KEY (ST_GROUPING_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 
   
/*************		APPLICATION TABLE		*************/

DROP TABLE APPLICATION CASCADE CONSTRAINTS;

CREATE TABLE APPLICATION ( 
	APP_PK NUMBER(19) NOT NULL,
	APP_ID VARCHAR2(255) NOT NULL,
	APP_NAME VARCHAR2(255) NOT NULL,
	APP_RESP NUMBER(19) NOT NULL,
	PLATFORM NUMBER(19) NOT NULL,
	AUTH_TYPE NUMBER(2) NOT NULL,
	UO NUMBER(19) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	AUTH_USER VARCHAR2(255),
	AUTH_PASS VARCHAR2(255),
	AUTH_CERT NUMBER(19),
	ENDINGTIME DATE,
PRIMARY KEY (APP_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
   
/*************		UO TABLE		*************/   
 
DROP TABLE UO CASCADE CONSTRAINTS;

CREATE TABLE UO ( 
	UO_PK NUMBER(19) NOT NULL,
	UO_ID VARCHAR2(255) NOT NULL,
	UO_NAME VARCHAR2(255) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	ENDINGTIME DATE,
PRIMARY KEY (UO_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
  TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;  
   
/*************		UOREL TABLE		*************/   
 
DROP TABLE UOREL CASCADE CONSTRAINTS; 
 
CREATE TABLE UOREL ( 
	UO NUMBER(19) NOT NULL,
	PARENT_UO NUMBER(19) NOT NULL,
PRIMARY KEY (UO, PARENT_UO) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;
   
/*************		TEMPLATEREPORT TABLE		*************/   
 
DROP TABLE TEMPLATEREPORT CASCADE CONSTRAINTS;
   
CREATE TABLE TEMPLATEREPORT ( 
	TR_PK NUMBER(19) NOT NULL,
	TR_ID VARCHAR2(255) NOT NULL,
	TR_TYPE NUMBER(2) NOT NULL,
	TR_CONTENT VARCHAR2(28) NOT NULL,
	TR_FORCE CHAR(1) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	DI_TYPE NUMBER(2) NOT NULL,
	TR_ATT NUMBER(2),
	CONCATRULE VARCHAR2(255),
	PAGERANGE VARCHAR2(255),
	ENDINGTIME DATE,
PRIMARY KEY (TR_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 

/*************		TEMPLATEREPORT TABLE		*************/   
 
DROP TABLE TEMPLATECONTENT CASCADE CONSTRAINTS;
   
CREATE TABLE TEMPLATECONTENT ( 
	CONTENT_ID VARCHAR2(28) NOT NULL,
	TREPORT BLOB NOT NULL,
PRIMARY KEY (CONTENT_ID) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 
   
/*************		APPTEMPLATE TABLE		*************/   
 
DROP TABLE APPTEMPLATE CASCADE CONSTRAINTS;
   
CREATE TABLE APPTEMPLATE ( 
	APP NUMBER(19) NOT NULL,
	T_REPORT NUMBER(19) NOT NULL,
PRIMARY KEY (APP,T_REPORT) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;   
   
/*************		PERSONALDATA TABLE		*************/   
 
DROP TABLE PERSONALDATA CASCADE CONSTRAINTS;

CREATE TABLE PERSONALDATA ( 
	PD_PK NUMBER(19) NOT NULL,
	PD_NAME VARCHAR2(255) NOT NULL,
	PD_SURNAME VARCHAR2(255) NOT NULL,
	PD_PHONE NUMBER(19) NOT NULL,
	PD_EMAIL VARCHAR2(255) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	ENDINGTIME DATE,
PRIMARY KEY (PD_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
 TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;   

/*************		PLATFORM TABLE		*************/   
 
DROP TABLE PLATFORM CASCADE CONSTRAINTS;

CREATE TABLE PLATFORM ( 
	PF_PK NUMBER(19) NOT NULL,
	PF_ID VARCHAR2(255) NOT NULL,
	PF_APP VARCHAR2(255) NOT NULL,
	PF_VERSION VARCHAR2(255) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	AUTH_TYPE NUMBER(2) NOT NULL,
	AUTH_USER VARCHAR2(255),
	AUTH_PASS VARCHAR2(255),
	AUTH_CERT NUMBER(19) ,
	SOAPTRUSTED NUMBER(19),
	ENDINGTIME DATE,
PRIMARY KEY (PF_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 

/*************		SERVICE TABLE		*************/   
 
DROP TABLE SERVICE CASCADE CONSTRAINTS;

CREATE TABLE SERVICE ( 
	SERVICE_ID VARCHAR2(255) NOT NULL,
	PLATFORM NUMBER(19) NOT NULL,
	S_LOCATION VARCHAR2(255) NOT NULL,
	S_OPERATION VARCHAR2(255) NOT NULL,
	S_TIMEOUT NUMBER(10) NOT NULL,
PRIMARY KEY (SERVICE_ID,PLATFORM) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;    
    

/*************		ATTACHMENT TABLE		*************/   
 
DROP TABLE ATTACHMENT CASCADE CONSTRAINTS;
   
CREATE TABLE ATTACHMENT ( 
	ATT_PK NUMBER(2) NOT NULL,
	ATT_SIG CHAR(1) NOT NULL,
	ATT_CERT CHAR(1) NOT NULL,
	ATT_DOC CHAR(1) NOT NULL,
	ATT_RESP CHAR(1) NOT NULL,
	ATT_DOC_SIG CHAR(1) NOT NULL,
PRIMARY KEY (ATT_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;  

/*************		USERS TABLE		*************/   
 
DROP TABLE USERS CASCADE CONSTRAINTS;

CREATE TABLE USERS ( 
	USER_PK NUMBER(19) NOT NULL,
	USER_LOGIN VARCHAR2(255) NOT NULL,
	USER_PASS VARCHAR2(255) NOT NULL,
	USER_DATA NUMBER(19) NOT NULL,
	USER_LOCKED CHAR(1) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	ENDINGTIME DATE,
PRIMARY KEY (USER_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE;  

/*************		CERTIFICATE TABLE		*************/   
 
DROP TABLE CERTIFICATE CASCADE CONSTRAINTS;

CREATE TABLE CERTIFICATE ( 
	CERT_PK NUMBER(19) NOT NULL,
	CERT_ID VARCHAR2(255) NOT NULL,
	CERT_CONTENT BLOB NOT NULL,
	KEYSTORE NUMBER(2) NOT NULL,
	CREATIONTIME DATE NOT NULL,
	PRIV_KEY BLOB,
	KEY_ALG VARCHAR2(255),
	ENDINGTIME DATE,
PRIMARY KEY (CERT_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 

/*************		KEYSTORE TABLE		*************/   
 
DROP TABLE KEYSTORE CASCADE CONSTRAINTS;

CREATE TABLE KEYSTORE ( 
	KS_PK NUMBER(2) NOT NULL,
	KS_NAME VARCHAR2(255) NOT NULL,
	KS_VERSION NUMBER(9) NOT NULL,
PRIMARY KEY (KS_PK) USING INDEX 
     TABLESPACE EVISOR_TS)
TABLESPACE EVISOR_TS
   INITRANS 1
   MAXTRANS 255
   NOCACHE; 
  


/*************		CREATION OF FOREIGN KEYS		*************/
ALTER TABLE ALARM_REC ADD 
	FOREIGN KEY (ALARM) 
		REFERENCES ALARM (ALARM_ID) ON DELETE CASCADE;
	
		
ALTER TABLE ALARM_REC ADD 
	FOREIGN KEY (REC) 
		REFERENCES RECEIVERS (REC_PK) ON DELETE CASCADE;
		

ALTER TABLE LOG_ALARM ADD 
	FOREIGN KEY (ALARM) 
		REFERENCES ALARM (ALARM_ID) ON DELETE CASCADE;


/** FOREIGN KEY S_TRANSACTIONS.SERVICE TO SERVICES.SERVICE_PK **/

ALTER TABLE S_TRANSACTIONS ADD
	FOREIGN KEY (SERVICE)
		REFERENCES SERVICES (SERVICE_PK) ON DELETE CASCADE;
		
		
/** FOREIGN KEY T_TRACES.S_TRANSACTION TO S_TRANSACTIONS.S_TRANSACTION_PK **/

ALTER TABLE T_TRACES ADD
	FOREIGN KEY (S_TRANSACTION)
		REFERENCES S_TRANSACTIONS (S_TRANSACTION_PK) ON DELETE CASCADE;
		
/** FOREIGN KEY T_TRACES.ACTION TO ACTIONS.ACTION_PK **/

ALTER TABLE T_TRACES ADD
	FOREIGN KEY (ACTIONTYPE)
		REFERENCES ACTIONTYPES (ACTIONTYPE_PK) ON DELETE CASCADE;
		
		
/** FOREIGN KEY T_TRACEFIELDS.T_TRACE TO T_TRACES.T_TRACE_PK **/

ALTER TABLE T_TRACEFIELDS ADD
	FOREIGN KEY (T_TRACE)
		REFERENCES T_TRACES (T_TRACE_PK) ON DELETE CASCADE;
		
/** FOREIGN KEY T_TRACEFIELDS.FIELD TO FIELDS.FIELD_PK **/

ALTER TABLE T_TRACEFIELDS ADD
	FOREIGN KEY (FIELD)
		REFERENCES FIELDS (FIELD_PK) ON DELETE CASCADE;
		
/** FOREIGN KEY ST_GROUPINGS.ST_TIME TO ST_TIMES.ST_TIME_PK **/

ALTER TABLE ST_GROUPINGS ADD
	FOREIGN KEY (ST_TIME)
		REFERENCES ST_TIMES (ST_TIME_PK) ON DELETE CASCADE;

/** FOREIGN KEY ST_GROUPINGS.ST_SERVICE TO SERVICES.SERVICE_PK **/

ALTER TABLE ST_GROUPINGS ADD
	FOREIGN KEY (ST_SERVICE)
		REFERENCES SERVICES (SERVICE_PK) ON DELETE CASCADE;
		
ALTER TABLE UOREL ADD 
	FOREIGN KEY (UO) 
		REFERENCES UO (UO_PK) ON DELETE CASCADE;
		
ALTER TABLE UOREL ADD 
	FOREIGN KEY (PARENT_UO) 
		REFERENCES UO (UO_PK) ON DELETE CASCADE;

ALTER TABLE APPLICATION ADD 
	FOREIGN KEY (UO) 
		REFERENCES UO (UO_PK) ON DELETE CASCADE;
		
ALTER TABLE APPLICATION ADD 
	FOREIGN KEY (AUTH_CERT) 
		REFERENCES CERTIFICATE (CERT_PK) ON DELETE CASCADE;
		
ALTER TABLE APPLICATION ADD 
	FOREIGN KEY (APP_RESP) 
		REFERENCES PERSONALDATA (PD_PK) ON DELETE CASCADE;
		
ALTER TABLE APPLICATION ADD 
	FOREIGN KEY (PLATFORM) 
		REFERENCES PLATFORM (PF_PK) ON DELETE CASCADE;
		
ALTER TABLE APPTEMPLATE ADD 
	FOREIGN KEY (T_REPORT) 
		REFERENCES TEMPLATEREPORT(TR_PK) ON DELETE CASCADE;
		
ALTER TABLE APPTEMPLATE ADD 
	FOREIGN KEY (APP) 
		REFERENCES APPLICATION (APP_PK) ON DELETE CASCADE;
		
ALTER TABLE TEMPLATEREPORT ADD 
	FOREIGN KEY (TR_ATT) 
		REFERENCES ATTACHMENT (ATT_PK)ON DELETE CASCADE;

ALTER TABLE TEMPLATEREPORT ADD 
	FOREIGN KEY (TR_CONTENT) 
		REFERENCES TEMPLATECONTENT (CONTENT_ID)ON DELETE CASCADE;
		
ALTER TABLE USERS ADD 
	FOREIGN KEY (USER_DATA) 
		REFERENCES PERSONALDATA (PD_PK)ON DELETE CASCADE;
		
ALTER TABLE SERVICE ADD 
	FOREIGN KEY (PLATFORM) 
		REFERENCES PLATFORM (PF_PK)ON DELETE CASCADE;
		
ALTER TABLE PLATFORM ADD 
	FOREIGN KEY (SOAPTRUSTED) 
		REFERENCES CERTIFICATE (CERT_PK)ON DELETE CASCADE;
		
ALTER TABLE PLATFORM ADD 
	FOREIGN KEY (AUTH_CERT) 
		REFERENCES CERTIFICATE (CERT_PK)ON DELETE CASCADE;
		
ALTER TABLE CERTIFICATE ADD 
	FOREIGN KEY (KEYSTORE) 
		REFERENCES KEYSTORE (KS_PK)ON DELETE CASCADE;

		
COMMIT;

   
EXIT;



