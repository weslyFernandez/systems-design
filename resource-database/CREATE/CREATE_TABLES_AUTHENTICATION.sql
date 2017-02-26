/*TABLES AUTHENTICATION AND PERMISIONS*/

--USUARIOS
CREATE TABLE CRM.USUARIO(
	ID NUMBER,
	USUARIO VARCHAR2(50),
	CONTRASENIA VARCHAR2(50),
	EMAIL VARCHAR2(30),
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_USUARIO_ID PRIMARY KEY(ID)
);


--ROLES
CREATE TABLE CRM.ROL(
	ID NUMBER,
	ROL VARCHAR2(50),
	DECRIPCION VARCHAR2(200),
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_ROL_ID PRIMARY KEY(ID)	
);


--RUTAS
CREATE TABLE CRM.RUTA(
	ID NUMBER,
	DECRIPCION VARCHAR2(200),
	URL VARCHAR2(50),
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_RUTA_ID PRIMARY KEY(ID)	
);


--ACCESOS

CREATE TABLE CRM.ACCESO(
	ID NUMBER,
	DECRIPCION VARCHAR2(200),
	PATH_ROUTE VARCHAR2(50),
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_ACCESO_ID PRIMARY KEY(ID)	
);


--USUARIO_ROL

CREATE TABLE CRM.PERMISOS(
	ID NUMBER,
	USUARIO_ID NUMBER,
	ROL_ID NUMBER,
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_PERMISOS_ID PRIMARY KEY(ID),
	CONSTRAINT CRM_USUARIO_FK_PERMISOS FOREIGN KEY(USUARIO_ID) REFERENCES CRM.USUARIO(ID),
	CONSTRAINT CRM_ROL_FK_PERMISOS FOREIGN KEY(ROL_ID) REFERENCES CRM.ROL(ID)	
);


--ROL_RUTA
CREATE TABLE CRM.ROL_RUTA(
	ID NUMBER,
	ROL_ID NUMBER,
	RUTA_ID NUMBER,
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_ROL_RUTA_ID PRIMARY KEY(ID),
	CONSTRAINT CRM_ROL_FK_R_RUTA FOREIGN KEY(ROL_ID) REFERENCES CRM.ROL(ID),
	CONSTRAINT CRM_RUTA_FK_R_RUTA FOREIGN KEY(RUTA_ID) REFERENCES CRM.RUTA(ID)	
);


--RUTA_ACCESO
CREATE TABLE CRM.RUTA_ACCESO(
	ID NUMBER,
	RUTA_ID NUMBER,
	ACCESO_ID NUMBER,
	FECHA_CREACION DATE,
	ESTADO VARCHAR2(4),
	CONSTRAINT PK_RUTA_ACCESO_ID PRIMARY KEY(ID),
	CONSTRAINT CRM_RUTA_FK_R_ACCESO FOREIGN KEY(RUTA_ID) REFERENCES CRM.RUTA(ID),
	CONSTRAINT CRM_ACCESO_FK_R_ACCESO FOREIGN KEY(ACCESO_ID) REFERENCES CRM.ACCESO(ID)	
);




