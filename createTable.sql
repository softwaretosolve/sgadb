create table Estado(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	primary key (ID)
	
);

------------------------------------- MÓDULO ADMINISTRACION ---------------------

create table Institucion(
    ID int not null AUTO_INCREMENT,
    Nombre varchar(100),
	
	EstadoID int,
	
	primary key (ID)
);

create table Telefono(
    ID int not null AUTO_INCREMENT,
    Telefono varchar(20),
	
	primary key (ID)
);

create table Correo(
    ID int not null AUTO_INCREMENT,
    Correo varchar(50),
	
	primary key (ID)
);

create table InstitucionTelefono(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    TelefonoID int,
	
	primary key (ID)
);

create table InstitucionCorreo(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    CorreoID int,
	
	primary key (ID)
);

create table Persona(
    ID int not null AUTO_INCREMENT,
    Nombres varchar(50),
    Apellidos varchar(50),
    FechaNacimiento datetime,
    Identificacion varchar(50),
    Direccion varchar(100),        
    Sexo int,
	
	primary key (ID)       
);

create table InstitucionPersona(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    PersonaID int,
	
	primary key (ID)
);

create table PersonaTelefono(
    ID int not null AUTO_INCREMENT,
    
    PersonaID int,
    TelefonoID int,
	
	primary key (ID)
);

create table PersonaCorreo(
    ID int not null AUTO_INCREMENT,
    
    PersonaID int,
    CorreoID int,
	
	primary key (ID)
);

create table Rol(
    ID int not null AUTO_INCREMENT,
    Descripcion varchar(50), 
	
	EstadoID int,
	
	primary key (ID)
);

create table InstitucionRol(
	ID int not null AUTO_INCREMENT,
		
	InstitucionID int,
	RolID int,
	
	primary key (ID)
);

create table InstitucionPersonaRol(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionPersonaID int,	
	RolID int,
	
	primary key (ID)
);

create table Permiso(
	ID int not null AUTO_INCREMENT,
	Descripcion varchar(50),
	
	EstadoID int,
	
	primary key (ID)
);

create table InstitucionPermiso(
	ID int not null AUTO_INCREMENT,
		
	InstitucionID int,
	PermisoID int,
	
	primary key (ID)
);

create table InstitucionRolPermiso(
	ID int not null AUTO_INCREMENT,
	
	InstitucionRolID int,
	PermisoID int,
	
	primary key (ID)
);
--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------
create table Materia(
    ID int not null AUTO_INCREMENT,
    Nombre varchar(100),
	
	EstadoID int,
	
	primary key (ID)
);

create table InstitucionMateria(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	MateriaID int,
	
	primary key (ID)
);

create table CategoriaCiclo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaCicloPadreID int,
	
	primary key (ID)
);

create table InstitucionCategoriaCiclo(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	CategoriaCicloID int,
	
	primary key (ID)
);

create table Ciclo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	FechaInicio datetime,
	FechaFin datetime,
		
	CategoriaCicloID int,
	CicloPadreID int,
	
	primary key (ID)
);

create table InstitucionCiclo(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	CicloID int,
	
	primary key (ID)
);

create table CategoriaNivel(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaNivelPadreID int,
	
	primary key (ID)
);

create table InstitucionCategoriaNivel(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	CategoriaNivelID int,
	
	primary key (ID)
);

create table Nivel(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50), 
	
	CategoriaNivelID int,
	NivelPadreID int,
	
	primary key (ID)
);

create table InstitucionNivel(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	NivelID int,
	
	primary key (ID)
);

create table Seccion(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),

	InstitucionNivelID int,
	EstadoID int,
	
	primary key (ID)
);

create table Curriculo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(100),
	Fecha datetime,
	
	primary key (ID)
);

create table Asignatura(
	ID int not null AUTO_INCREMENT,
	
	CurriculoID int,
	MateriaID int,
	
	primary key (ID)
);

create table InstitucionNivelCurriculo(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionNivelID int,	
	CurriculoID int,
	
	primary key (ID)
);

create table Unidad(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	PuntajeMinimo double,
	PuntajeMaximo double,	
		
	AsignaturaID int,
	CicloID int,
	
	primary key (ID)
);

create table TipoActividad(
	ID int not null AUTO_INCREMENT,
	Descripcion varchar(50),
	
	primary key (ID)
);

create table InstitucionTipoActividad(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	TipoActividadID int,
	
	primary key (ID)
);

create table Actividad(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	Descripcion varchar(250),
	Ponderacion double,
	Fecha datetime,
	
	TipoActividadID int,
	UnidadID int,
	
	primary key (ID)
);

create table Curso(
	ID int not null AUTO_INCREMENT,		
	
	CicloID int,
	AsignaturaID int,
	SeccionID int,
	
	primary key (ID)
);
------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
create table Matricula(
	ID int not null AUTO_INCREMENT,
	Fecha datetime,
	
	InstitucionPersonaID int,
	CicloID int,
	NivelID int,
	
	primary key (ID)
);

create table MatriculaSeccion(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	MatriculaID int,
	SeccionID int,
	
	primary key (ID)
);

create table Nota(
	ID int not null AUTO_INCREMENT,
	Puntaje double,
	
	ActividadID int,
	MatriculaID int,
	
	primary key (ID)
);

create table Profesor(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
		
	InstitucionPersonaID int,	
	CursoID int,
	
	primary key (ID)
);