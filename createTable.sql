create table Estado(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	primary key (ID)
	
);

------------------------------------- MÓDULO ADMINISTRACION ---------------------

create table Institucion(
    ID int unsigned not null AUTO_INCREMENT,
    Nombre varchar(100),
	
	EstadoID int unsigned,
	
	primary key (ID)
);

create table Telefono(
    ID int unsigned not null AUTO_INCREMENT,
    Telefono varchar(20),
	
	primary key (ID)
);

create table Correo(
    ID int unsigned not null AUTO_INCREMENT,
    Correo varchar(50),
	
	primary key (ID)
);

create table InstitucionTelefono(
    ID int unsigned not null AUTO_INCREMENT,
    
    InstitucionID int unsigned,
    TelefonoID int unsigned,
	
	primary key (ID)
);

create table InstitucionCorreo(
    ID int unsigned not null AUTO_INCREMENT,
    
    InstitucionID int unsigned,
    CorreoID int unsigned,
	
	primary key (ID)
);

create table Persona(
    ID int unsigned not null AUTO_INCREMENT,
    Nombres varchar(50),
    Apellidos varchar(50),
    FechaNacimiento datetime,
    Identificacion varchar(50),
    Direccion varchar(100),        
    Sexo int unsigned,
	
	primary key (ID)       
);

create table InstitucionPersona(
    ID int unsigned not null AUTO_INCREMENT,
    
    InstitucionID int unsigned,
    PersonaID int unsigned,
	
	primary key (ID)
);

create table PersonaTelefono(
    ID int unsigned not null AUTO_INCREMENT,
    
    PersonaID int unsigned,
    TelefonoID int unsigned,
	
	primary key (ID)
);

create table PersonaCorreo(
    ID int unsigned not null AUTO_INCREMENT,
    
    PersonaID int unsigned,
    CorreoID int unsigned,
	
	primary key (ID)
);

create table Rol(
    ID int unsigned not null AUTO_INCREMENT,
    Descripcion varchar(50), 
	
	EstadoID int unsigned,
	
	primary key (ID)
);

create table InstitucionRol(
	ID int unsigned not null AUTO_INCREMENT,
		
	InstitucionID int unsigned,
	RolID int unsigned,
	
	primary key (ID)
);

create table InstitucionPersonaRol(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionPersonaID int unsigned,	
	RolID int unsigned,
	
	primary key (ID)
);

create table Permiso(
	ID int unsigned not null AUTO_INCREMENT,
	Descripcion varchar(50),
	
	EstadoID int unsigned,
	
	primary key (ID)
);

create table InstitucionPermiso(
	ID int unsigned not null AUTO_INCREMENT,
		
	InstitucionID int unsigned,
	PermisoID int unsigned,
	
	primary key (ID)
);

create table InstitucionRolPermiso(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionRolID int unsigned,
	PermisoID int unsigned,
	
	primary key (ID)
);
--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------
create table Materia(
    ID int unsigned not null AUTO_INCREMENT,
    Nombre varchar(75),
	
	EstadoID int unsigned,
	
	primary key (ID)
);

create table InstitucionMateria(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	MateriaID int unsigned,
	
	primary key (ID)
);

create table CategoriaCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaCicloPadreID int unsigned,
	
	primary key (ID)
);

create table InstitucionCategoriaCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	CategoriaCicloID int unsigned,
	
	primary key (ID)
);

create table Ciclo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),
	FechaInicio datetime,
	FechaFin datetime,
		
	CategoriaCicloID int unsigned,
	CicloPadreID int unsigned,
	
	primary key (ID)
);

create table InstitucionCiclo(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	CicloID int unsigned,
	
	primary key (ID)
);

create table CategoriaNivel(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaNivelPadreID int unsigned,
	
	primary key (ID)
);

create table InstitucionCategoriaNivel(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	CategoriaNivelID int unsigned,
	
	primary key (ID)
);

create table Nivel(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75), 
	
	CategoriaNivelID int unsigned,
	NivelPadreID int unsigned,
	
	primary key (ID)
);

create table InstitucionNivel(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	NivelID int unsigned,
	
	primary key (ID)
);

create table Seccion(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),

	InstitucionNivelID int unsigned,
	EstadoID int unsigned,
	
	primary key (ID)
);

create table Curriculo(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(100),
	Fecha datetime,
	
	primary key (ID)
);

create table Asignatura(
	ID int unsigned not null AUTO_INCREMENT,
	
	CurriculoID int unsigned,
	MateriaID int unsigned,
	
	primary key (ID)
);

create table InstitucionNivelCurriculo(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionNivelID int unsigned,	
	CurriculoID int unsigned,
	
	primary key (ID)
);

create table Unidad(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50),
	PuntajeMinimo decimal(9,2),
	PuntajeMaximo decimal(9,2),	
		
	AsignaturaID int unsigned,
	CicloID int unsigned,
	
	primary key (ID)
);

create table TipoActividad(
	ID int unsigned not null AUTO_INCREMENT,
	Descripcion varchar(75),
	
	primary key (ID)
);

create table InstitucionTipoActividad(
	ID int unsigned not null AUTO_INCREMENT,
	
	InstitucionID int unsigned,
	TipoActividadID int unsigned,
	
	primary key (ID)
);

create table Actividad(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75),
	Descripcion varchar(1000),
	Ponderacion decimal(9,2),
	Fecha datetime,
	
	TipoActividadID int unsigned,
	UnidadID int unsigned,
	
	primary key (ID)
);

create table Curso(
	ID int unsigned not null AUTO_INCREMENT,		
	
	CicloID int unsigned,
	AsignaturaID int unsigned,
	SeccionID int unsigned,
	
	primary key (ID)
);
------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
create table Matricula(
	ID int unsigned not null AUTO_INCREMENT,
	Fecha datetime,
	
	InstitucionPersonaID int unsigned,
	CicloID int unsigned,
	NivelID int unsigned,
	
	primary key (ID)
);

create table MatriculaSeccion(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	MatriculaID int unsigned,
	SeccionID int unsigned,
	
	primary key (ID)
);

create table Nota(
	ID int unsigned not null AUTO_INCREMENT,
	Puntaje decimal(9,2),
	
	ActividadID int unsigned,
	MatriculaID int unsigned,
	
	primary key (ID)
);

create table Profesor(
	ID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
		
	InstitucionPersonaID int unsigned,	
	CursoID int unsigned,
	
	primary key (ID)
);