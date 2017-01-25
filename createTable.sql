create table Estado(
	ID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50)not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	primary key (ID)
	
);

#------------------------------------- MÓDULO ADMINISTRACION ---------------------

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
#--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


#-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------

create table CategoriaCiclo(
	CategoriaCicloID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	CategoriaCicloPadreID int unsigned null,
	EstadoID int unsigned null,	
	InstitucionID int unsigned null,
	
	primary key (CategoriaCicloID)
);


create table Ciclo(
	CicloID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	Ordinal int unsigned null,
	FechaInicio datetime not null,
	FechaFin datetime null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
			
	CategoriaCicloID int unsigned null,
	CicloPadreID int unsigned null,
	InstitucionID int unsigned not null,
	EstadoID int unsigned null,
	
	primary key (CicloID)
);


create table CategoriaNivel(
	CategoriaNivelID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	CategoriaNivelPadreID int unsigned null,
	InstitucionID int unsigned null,
	EstadoID int unsigned null,
	
	primary key (CategoriaNivelID)
);

create table Nivel(
	NivelID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75) not null,
	Ordinal int unsigned null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	CategoriaNivelID int unsigned null,
	NivelPadreID int unsigned null,
	InstitucionID int unsigned not null,
	EstadoID int unsigned null,
	
	primary key (NivelID)
);

create table Seccion(
	SeccionID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	Ordinal int unsigned null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	NivelID int unsigned not null,
	EstadoID int unsigned null,
	
	primary key (SeccionID)
);

create table Materia(
    MateriaID int unsigned not null AUTO_INCREMENT,
    Nombre varchar(75) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	EstadoID int unsigned null,
	InstitucionID int unsigned null,
	
	primary key (MateriaID)
);

create table Curriculo(
	CurriculoID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(100) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned null,
	EstadoID int unsigned null,
	
	primary key (CurriculoID)
);

create table Asignatura(
	AsignaturaID int unsigned not null AUTO_INCREMENT,
	Ordinal int unsigned null,
	
	CurriculoID int unsigned not null,
	MateriaID int unsigned not null,
	
	primary key (AsignaturaID)
);

create table NivelCurriculo(
	NivelCurriculoID int unsigned not null AUTO_INCREMENT,
	FechaInicio datetime not null,
	FechaFin datetime null,
	
	NivelID int unsigned not null,	
	CurriculoID int unsigned not null,
	EstadoID int unsigned not null,
	
	primary key (NivelCurriculoID)
);

create table Unidad(
	UnidadID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(50) not null,
	Ordinal int unsigned null,
	PuntajeMinimo decimal(9,2) null,
	PuntajeMaximo decimal(9,2) null,
	PuntajeAprobacion decimal(9,2) null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
				
	AsignaturaID int unsigned not null,
	CicloID int unsigned not null,
	
	primary key (UnidadID)
);

create table TipoActividad(
	TipoActividadID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75) not null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	InstitucionID int unsigned null,
	EstadoID int unsigned null,
	
	primary key (TipoActividadID)
);

create table Actividad(
	ActividadID int unsigned not null AUTO_INCREMENT,
	Nombre varchar(75) not null,
	Descripcion varchar(1000) null,
	Ponderacion decimal(9,2) null,
	Fecha datetime null,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,
	
	
	TipoActividadID int unsigned null,
	UnidadID int unsigned not null,
	
	primary key (ActividadID)
);

create table Curso(
	CursoID int unsigned not null AUTO_INCREMENT,
	CreatedAt timestamp DEFAULT CURRENT_TIMESTAMP,	
	
	CicloID int unsigned not null,
	AsignaturaID int unsigned not null,
	SeccionID int unsigned not null,
	HorarioID int unsigned null,
	
	primary key (CursoID)
);
#------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

#------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
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