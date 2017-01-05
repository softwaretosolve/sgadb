
------------------------------------- MÓDULO ADMINISTRACION ---------------------

create table Institucion(
    InstitucionID int,
    Nombre varchar(100)	
);

create table Telefono(
    TelefonoID int,
    Telefono varchar(20)
);

create table Correo(
    CorreoID int,
    Correo varchar(50)
);

create table InstitucionTelefono(
    InstitucionTelefonoID int,
    
    InstitucionID int,
    TelefonoID int
);

create table InstitucionCorreo(
    InstitucionCorreoID int,
    
    InstitucionID int,
    CorreoID int
);

create table Persona(
    PersonaID int,
    Nombres varchar(50),
    Apellidos varchar(50),
    FechaNacimiento datetime,
    Identificacion varchar(50),
    Direccion varchar(100),        
    Sexo int       
);

create table InstitucionPersona(
    InstitucionPersonaID int,
    
    InstitucionID int,
    PersonaID int
);

create table PersonaTelefono(
    PersonaTelefonoID int,
    
    PersonaID int,
    TelefonoID int
);

create table PersonaCorreo(
    PersonaCorreoID int,
    
    PersonaID int,
    CorreoID int
);

create table Rol(
    RolID int,
    Descripcion varchar(50),
    
    InstitucionID int
);

create table PersonaRol(
	PersonaRolID int,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionID int,
	PersonaID int,
	RolID int
);

create table Permiso(
	PermisoID int,
	Descripcion varchar(50),
	
	InstitucionID int
);

create table RolPermiso(
	RolPermisoID int,
	
	RolID int,
	PermisoID int
);
--------------------------------- FIN MÓDULO ADMINISTRACION ---------------------


-------------------------------------ORGANIZACIÓN ACADÉMICA ------------------------------
create table Materia(
    MateriaID int,
    Nombre varchar(100)	
);

create table InstitucionMateria(
	InstitucionPersonaID int,
	
	InstitucionID int,
	MateriaID int
);

create table CategoriaCiclo(
	CategoriaCicloID int,
	Nombre varchar(50),
	
	CategoriaCicloPadreID int	
);

create table InstitucionCategoriaCiclo(
	InstitucionCategoriaCicloID int,
	
	InstitucionID int,
	CategoriaCicloID int
);

create table Ciclo(
	CicloID int,
	Nombre varchar(50),
	FechaInicio datetime,
	FechaFin datetime,
		
	CategoriaCicloID int,
	CicloPadreID int
);

create table CategoriaNivel(
	CategoriaNivelID int,
	Nombre varchar(50),
	
	CategoriaNivelPadreID int
);

create table InstitucionCategoriaNivel(
	InstitucionCategoriaNivelID int,
	
	InstitucionID int,
	CategoriaNivelID int
);

create table Nivel(
	NivelID int,
	Nombre varchar(50), 
	
	CategoriaNivelID int,
	NivelPadreID int
);

create table InstitucionNivel(
	InstitucionNivelID int,
	
	InstitucionID int,
	NivelID int
);

create table Seccion(
	SeccionID int,
	Nombre varchar(50),

	InstitucionNivelID int	
);

create table Curriculo(
	CurriculoID int,
	Nombre varchar(100),
	Fecha datetime	
);

create table Asignatura(
	AsignaturaID int,
	
	CurriculoID int,
	MateriaID int
);

create table InstitucionNivelCurriculo(
	InstitucionNivelCurriculoID int,
	FechaInicio datetime,
	FechaFin datetime,
	
	InstitucionID int,
	NivelID int,
	CurriculoID int
);

create table Unidad(
	UnidadID int,
	Nombre varchar(50),
	PuntajeMinimo double,
	PuntajeMaximo double,	
		
	AsignaturaID int,
	CicloID int
);

create table TipoActividad(
	TipoActividadID int,
	Descripcion varchar(50)		
);

create table InstitucionTipoActividad(
	InstitucionTipoActividadID int,
	
	InstitucionID int,
	TipoActividadID int
);

create table Actividad(
	ActividadID int,
	Nombre varchar(50),
	Descripcion varchar(250),
	Ponderacion double,
	Fecha datetime,
	
	TipoActividadID int,
	UnidadID int
);

------------------------------------------- FIN ORGANIZACIÓN ACADÉMICA -------------------------------------------

------------------------------------------- CONTROL ACADÉMICO ---------------------------------------------
create table Matricula(
	MatriculaID int,
	Fecha datetime,
	
	InstitucionID int,
	PersonaID int,
	CicloID int,
	NivelID int
);

create table MatriculaSeccion(
	MatriculaSeccionID int,
	FechaInicio datetime,
	FechaFin datetime,
	
	MatriculaID int,
	SeccionID int
);

create table Nota(
	NotaID int,
	Puntaje double,
	
	ActividadID int,
	MatriculaID int
);

create table Curso(
	CursoID int,		
	
	CicloID int,
	AsignaturaID int,
	SeccionID int
);

create table Profesor(
	ProfesorID int,
	FechaInicio datetime,
	FechaFin datetime,
		
	PersonaID int,	
	Curso int
);