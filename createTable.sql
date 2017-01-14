create table Estado(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50)not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	primary key (ID)
	
);

------------------------------------- MÓDULO ADMINISTRACION ---------------------

create table Institucion(
    ID int unsigned not null AUTO_INCREMENT,
    Nombre varchar(100) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	EstadoID int unsigned null,
	
	primary key (ID)
);

create table Telefono(
    ID int unsigned not null AUTO_INCREMENT,
    Telefono varchar(20) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	primary key (ID)
);

create table Correo(
    ID int unsigned not null AUTO_INCREMENT,
    Correo varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	primary key (ID)
);

create table InstitucionTelefono(
    ID int unsigned not null AUTO_INCREMENT,	
    
    InstitucionID int unsigned not null,
    TelefonoID int unsigned not null,
	
	primary key (ID)
);

create table InstitucionCorreo(
    ID int unsigned not null AUTO_INCREMENT,
    
    InstitucionID int unsigned not null,
    CorreoID int unsigned not null,
	
	primary key (ID)
);

create table Persona(
    ID int unsigned not null AUTO_INCREMENT,
    Nombres varchar(50) not null,
    Apellidos varchar(50) not null,
    FechaNacimiento datetime null,
    Identificacion varchar(50) null,
    Direccion varchar(100) null,        
    Sexo int unsigned not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	primary key (ID)       
);

create table InstitucionPersona(
    ID int unsigned not null AUTO_INCREMENT,
    CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
    InstitucionID int unsigned not null,
    PersonaID int unsigned not null,	
	
	primary key (ID)
);

create table PersonaTelefono(
    ID int unsigned not null AUTO_INCREMENT,
    
    PersonaID int unsigned not null,
    TelefonoID int unsigned not null,
	
	primary key (ID)
);

create table PersonaCorreo(
    ID int unsigned not null AUTO_INCREMENT,
    
    PersonaID int unsigned not null,
    CorreoID int unsigned not null,
	
	primary key (ID)
);

create table Rol(
    ID int unsigned not null AUTO_INCREMENT,
    Descripcion varchar(50) not null, 
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	EstadoID int unsigned null,
	
	primary key (ID)
);

create table InstitucionRol(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
		
	InstitucionID int unsigned not null,
	RolID int unsigned not null,
	
	primary key (ID)
);

create table InstitucionPersonaRol(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime not null,
	FechaFin datetime null,
	
	InstitucionPersonaID int unsigned,	
	RolID int unsigned,
	
	primary key (ID)
);

create table Permiso(
	ID int unsigned not null AUTO_INCREMENT,
	Descripcion varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	EstadoID int unsigned null,
	
	primary key (ID)
);

create table InstitucionPermiso(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	PermisoID int unsigned not null,
	
	primary key (ID)
);

create table InstitucionRolPermiso(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionRolID int unsigned not null,
	PermisoID int unsigned not null,
	
	primary key (ID)
);
--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------
create table Materia(
    ID int unsigned not null AUTO_INCREMENT,
    Nombre varchar(75) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	EstadoID int unsigned null,
	
	primary key (ID)
);

create table InstitucionMateria(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	MateriaID int unsigned not null,
	
	primary key (ID)
);

create table CategoriaCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	CategoriaCicloPadreID int unsigned null,
	
	primary key (ID)
);

create table InstitucionCategoriaCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	CategoriaCicloID int unsigned not null,
	
	primary key (ID)
);

create table Ciclo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	FechaInicio datetime not null,
	FechaFin datetime not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
		
	CategoriaCicloID int unsigned null,
	CicloPadreID int unsigned null,
	
	primary key (ID)
);

create table InstitucionCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	CicloID int unsigned not null,
	
	primary key (ID)
);

create table CategoriaNivel(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	CategoriaNivelPadreID int unsigned null,
	
	primary key (ID)
);

create table InstitucionCategoriaNivel(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	CategoriaNivelID int unsigned not null,
	
	primary key (ID)
);

create table Nivel(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75) not null, 
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	CategoriaNivelID int unsigned null,
	NivelPadreID int unsigned null,
	
	primary key (ID)
);

create table InstitucionNivel(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	NivelID int unsigned not null,
	
	primary key (ID)
);

create table Seccion(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	

	InstitucionNivelID int unsigned not null,
	EstadoID int unsigned null,
	
	primary key (ID)
);

create table Curriculo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(100) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	primary key (ID)
);

create table Asignatura(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	CurriculoID int unsigned not null,
	MateriaID int unsigned not null,
	
	primary key (ID)
);

create table InstitucionNivelCurriculo(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime DEFAULT CURRENT_TIMESTAMP,
	FechaFin datetime null,
	
	InstitucionNivelID int unsigned not null,	
	CurriculoID int unsigned not null,
	
	primary key (ID)
);

create table Unidad(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	PuntajeMinimo decimal(9,2) null,
	PuntajeMaximo decimal(9,2) null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
		
		
	AsignaturaID int unsigned not null,
	CicloID int unsigned not null,
	
	primary key (ID)
);

create table TipoActividad(
	ID int unsigned not null AUTO_INCREMENT,
	Descripcion varchar(75) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	primary key (ID)
);

create table InstitucionTipoActividad(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned not null,
	TipoActividadID int unsigned not null,
	
	primary key (ID)
);

create table Actividad(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75) not null,
	Descripcion varchar(1000) null,
	Ponderacion decimal(9,2) null,
	Fecha datetime null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	TipoActividadID int unsigned null,
	UnidadID int unsigned not null,
	
	primary key (ID)
);

create table Curso(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	CicloID int unsigned not null,
	AsignaturaID int unsigned not null,
	SeccionID int unsigned not null,
	
	primary key (ID)
);
------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
create table Matricula(
	ID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	InstitucionPersonaID int unsigned not null,
	CicloID int unsigned not null,
	NivelID int unsigned not null,
	
	primary key (ID)
);

create table MatriculaSeccion(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime not null,
	FechaFin datetime null,
	
	MatriculaID int unsigned not null,
	SeccionID int unsigned not null,
	
	primary key (ID)
);

create table Nota(
	ID int unsigned not null AUTO_INCREMENT,
	Puntaje decimal(9,2) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	ActividadID int unsigned not null,
	MatriculaID int unsigned not null,
	
	primary key (ID)
);

create table Profesor(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime not null,
	FechaFin datetime null,
		
	InstitucionPersonaID int unsigned not null,	
	CursoID int unsigned not null,
	
	primary key (ID)
);