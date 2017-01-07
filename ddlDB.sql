
------------------------------------- MÓDULO ADMINISTRACION ---------------------

create table Institucion(
    ID int not null AUTO_INCREMENT,
    Nombre varchar(100)
);

create table Telefono(
    ID int not null AUTO_INCREMENT,
    Telefono varchar(20)
);

create table Correo(
    ID int not null AUTO_INCREMENT,
    Correo varchar(50)
);

create table InstitucionTelefono(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    TelefonoID int
);

create table InstitucionCorreo(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    CorreoID int
);

create table Persona(
    ID int not null AUTO_INCREMENT,
    Nombres varchar(50),
    Apellidos varchar(50),
    FechaNacimiento datetime,
    Identificacion varchar(50),
    Direccion varchar(100),        
    Sexo int       
);

create table InstitucionPersona(
    ID int not null AUTO_INCREMENT,
    
    InstitucionID int,
    PersonaID int
);

create table PersonaTelefono(
    ID int not null AUTO_INCREMENT,
    
    PersonaID int,
    TelefonoID int
);

create table PersonaCorreo(
    ID int not null AUTO_INCREMENT,
    
    PersonaID int,
    CorreoID int
);

create table Rol(
    ID int not null AUTO_INCREMENT,
    Descripcion varchar(50)
);

create table InstitucionRol(
	ID int not null AUTO_INCREMENT,
		
	InstitucionID int,
	RolID int
);

create table InstitucionPersonaRol(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionPersonaID int,	
	RolID int
);

create table Permiso(
	ID int not null AUTO_INCREMENT,
	Descripcion varchar(50)
);

create table InstitucionPermiso(
	ID int not null AUTO_INCREMENT,
		
	InstitucionID int,
	PermisoID int
);

create table InstitucionRolPermiso(
	ID int not null AUTO_INCREMENT,
	
	InstitucionRolID int,
	PermisoID int
);
--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------
create table Materia(
    ID int not null AUTO_INCREMENT,
    Nombre varchar(100)	
);

create table InstitucionMateria(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	MateriaID int
);

create table CategoriaCiclo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaCicloPadreID int	
);

create table InstitucionCategoriaCiclo(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	CategoriaCicloID int
);

create table Ciclo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	FechaInicio datetime,
	FechaFin datetime,
		
	CategoriaCicloID int,
	CicloPadreID int
);

create table CategoriaNivel(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	
	CategoriaNivelPadreID int
);

create table InstitucionCategoriaNivel(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	CategoriaNivelID int
);

create table Nivel(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50), 
	
	CategoriaNivelID int,
	NivelPadreID int
);

create table InstitucionNivel(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	NivelID int
);

create table Seccion(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),

	InstitucionNivelID int	
);

create table Curriculo(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(100),
	Fecha datetime	
);

create table Asignatura(
	ID int not null AUTO_INCREMENT,
	
	CurriculoID int,
	MateriaID int
);

create table InstitucionNivelCurriculo(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionID int,
	NivelID int,
	CurriculoID int
);

create table Unidad(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	PuntajeMinimo double,
	PuntajeMaximo double,	
		
	AsignaturaID int,
	CicloID int
);

create table TipoActividad(
	ID int not null AUTO_INCREMENT,
	Descripcion varchar(50)		
);

create table InstitucionTipoActividad(
	ID int not null AUTO_INCREMENT,
	
	InstitucionID int,
	TipoActividadID int
);

create table Actividad(
	ID int not null AUTO_INCREMENT,
	Nombre varchar(50),
	Descripcion varchar(250),
	Ponderacion double,
	Fecha datetime,
	
	TipoActividadID int,
	UnidadID int
);

create table Curso(
	ID int not null AUTO_INCREMENT,		
	
	CicloID int,
	AsignaturaID int,
	SeccionID int
);
------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
create table Matricula(
	ID int not null AUTO_INCREMENT,
	Fecha datetime,
	
	InstitucionPersonaID int
	CicloID int,
	NivelID int
);

create table MatriculaSeccion(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
	
	MatriculaID int,
	SeccionID int
);

create table Nota(
	ID int not null AUTO_INCREMENT,
	Puntaje double,
	
	ActividadID int,
	MatriculaID int
);

create table Profesor(
	ID int not null AUTO_INCREMENT,
	FechaInicio datetime,
	FechaFin datetime,
		
	InstitucionPersonaID int,	
	Curso int
);