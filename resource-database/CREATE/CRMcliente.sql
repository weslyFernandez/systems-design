CREATE TABLE CRM.Clientes(
	Id NUMBER,
	Nombres VARCHAR2(30),
	Apellidos VARCHAR2(30),
	FechaCreacion VARCHAR2(30),
	Estado VARCHAR2(30),
	CONSTRAINT PK_Clientes_Id PRIMARY KEY(Id)
);

CREATE TABLE CRM.ContTipos(
	Id NUMBER,
	Descripcion VARCHAR2(30),
	CONSTRAINT PK_ContTipos_Id PRIMARY KEY(Id)
);

CREATE TABLE CRM.DocuTipos(
	Id NUMBER,
	Descripcion VARCHAR2(30),
	CONSTRAINT PK_DocuTipos_Id PRIMARY KEY(ID)
);


CREATE TABLE CRM.GenerClientes(
	Id NUMBER,
	FechaNacimiento DATE,
	Genero VARCHAR2(30),
	EstadoCivil VARCHAR2(30),
	CantidadHijos NUMBER,
	Nacionalidad VARCHAR2(30),
	IdCliente NUMBER,
	CONSTRAINT PK_GenerClientes_Id PRIMARY KEY(Id),
	CONSTRAINT CRM_Cliente_FK_GenerClientes FOREIGN KEY(IdCliente) REFERENCES CRM.Clientes(Id)
);

CREATE TABLE CRM.UsuaClientes(
	Id NUMBER,
	IdUsuario NUMBER,
	IdCliente NUMBER,
	FechaAlta DATE,
	CONSTRAINT PK_UsuaClien_Id PRIMARY KEY(Id),
	CONSTRAINT CRM_Cliente_FK_UsuaClientes FOREIGN KEY (IdCliente) REFERENCES CRM.Clientes(id),
	CONSTRAINT CRM_Usuario_FK_UsuaClientes FOREIGN KEY (IdUsuario) REFERENCES CRM.USUARIO(id)
);

CREATE TABLE CRM.ContaClientes(
	Id NUMBER,
	Descripcion VARCHAR2(30),
	IdCliente NUMBER,
	IdContTipo NUMBER,
	CONSTRAINT PK_ContCliente_Id PRIMARY KEY(Id),
	CONSTRAINT CRM_Cliente_FK_ContCliente FOREIGN KEY(IdCliente) REFERENCES CRM.Clientes(Id),
	CONSTRAINT CRM_ContTipo_FK_ContClientes FOREIGN KEY(IdContTipo) REFERENCES CRM.ContTipos(Id)
);

CREATE TABLE CRM.DocuClientes(
	Id NUMBER,
	NumeroDocu NUMBER,
	IdDocuTipo NUMBER,
	IdCliente NUMBER,
	CONSTRAINT PK_DocuClienntes_Id PRIMARY KEY(Id),
	CONSTRAINT CRM_TipoDocu_FK_DocuClientes FOREIGN KEY(IdDocuTipo) REFERENCES CRM.DocuTipos(Id),
	CONSTRAINT CRM_Cliente_FK_DocuClientes FOREIGN KEY(IdCliente) REFERENCES CRM.Clientes(Id)
);

CREATE SEQUENCE CRM.ClientesSeq
INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;

 CREATE SEQUENCE CRM.ContTiposSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;

 CREATE SEQUENCE CRM.DocuTiposSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;

 CREATE SEQUENCE CRM.GenerClientesSeq
INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;

CREATE SEQUENCE CRM.UsuaClientesSeq
INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;

CREATE SEQUENCE CRM.DocuClientesSeq
INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;
 
CREATE SEQUENCE CRM.ContaClientesSeq
INCREMENT BY 1
 START WITH 1
 NOMAXVALUE;