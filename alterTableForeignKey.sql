ALTER TABLE Institucion
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(ID);
	
	
ALTER TABLE InstitucionTelefono
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionTelefono
	ADD FOREIGN KEY (TelefonoID)
	REFERENCES Telefono(ID);
	
	
ALTER TABLE InstitucionCorreo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionCorreo
	ADD FOREIGN KEY (CorreoID)
	REFERENCES Correo(ID);
	
	
ALTER TABLE InstitucionPersona
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionPersona
	ADD FOREIGN KEY (PersonaID)
	REFERENCES Persona(ID);
	
	
ALTER TABLE PersonaTelefono
	ADD FOREIGN KEY (PersonaID)
	REFERENCES Persona(ID);
	
ALTER TABLE PersonaTelefono
	ADD FOREIGN KEY (TelefonoID)
	REFERENCES Telefono(ID);
	
	
ALTER TABLE PersonaCorreo
	ADD FOREIGN KEY (PersonaID)
	REFERENCES Persona(ID);
	
ALTER TABLE PersonaCorreo
	ADD FOREIGN KEY (CorreoID)
	REFERENCES Correo(ID);
	
	
ALTER TABLE Rol
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(ID);


ALTER TABLE InstitucionRol
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionRol
	ADD FOREIGN KEY (RolID)
	REFERENCES Rol(ID);
	
	
ALTER TABLE InstitucionPersonaRol
	ADD FOREIGN KEY (InstitucionPersonaID)
	REFERENCES InstitucionPersona(ID);
	
ALTER TABLE InstitucionPersonaRol
	ADD FOREIGN KEY (RolID)
	REFERENCES Rol(ID);
	
	
ALTER TABLE Permiso
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(ID);
	
	
ALTER TABLE InstitucionPermiso
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionPermiso
	ADD FOREIGN KEY (PermisoID)
	REFERENCES Permiso(ID);
	
#---------------------------- ORGANIZACIÓN ACADÉMICA ---------------------------------
ALTER TABLE CategoriaCiclo
	ADD FOREIGN KEY (CategoriaCicloPadreID)
	REFERENCES CategoriaCiclo(CategoriaCicloID);
	
ALTER TABLE CategoriaCiclo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
ALTER TABLE CategoriaCiclo
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);
	
#-----------------------------------------------------	
ALTER TABLE Ciclo
	ADD FOREIGN KEY (CategoriaCicloID)
	REFERENCES CategoriaCiclo(CategoriaCicloID);
	
ALTER TABLE Ciclo
	ADD FOREIGN KEY (CicloPadreID)
	REFERENCES Ciclo(CicloID);
		
ALTER TABLE Ciclo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
		
ALTER TABLE Ciclo
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);

#-----------------------------------------------------
	
ALTER TABLE CategoriaNivel
	ADD FOREIGN KEY (CategoriaNivelPadreID)
	REFERENCES CategoriaNivel(CategoriaNivelID);
	
ALTER TABLE CategoriaNivel
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
ALTER TABLE CategoriaNivel
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);

#-----------------------------------------------------

ALTER TABLE Nivel
	ADD FOREIGN KEY (CategoriaNivelID)
	REFERENCES CategoriaNivel(CategoriaNivelID);
	
ALTER TABLE Nivel
	ADD FOREIGN KEY (NivelPadreID)
	REFERENCES Nivel(NivelID);
		
ALTER TABLE Nivel
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
ALTER TABLE Nivel
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);

#-----------------------------------------------------

ALTER TABLE Seccion	
	ADD FOREIGN KEY (NivelID)
	REFERENCES Nivel(NivelID);
	
ALTER TABLE Seccion
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);
	
#-----------------------------------------------------
	
ALTER TABLE Materia
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);
	
ALTER TABLE Materia
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
#-----------------------------------------------------
	
ALTER TABLE Curriculo
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);
	
ALTER TABLE Curriculo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
#-----------------------------------------------------
	
ALTER TABLE Asignatura
	ADD FOREIGN KEY (CurriculoID)
	REFERENCES Curriculo(CurriculoID);
	
ALTER TABLE Asignatura
	ADD FOREIGN KEY (MateriaID)
	REFERENCES Materia(MateriaID);	
	
#-----------------------------------------------------
	
ALTER TABLE NivelCurriculo
	ADD FOREIGN KEY (NivelID)
	REFERENCES Nivel(NivelID);
	
ALTER TABLE NivelCurriculo
	ADD FOREIGN KEY (CurriculoID)
	REFERENCES Curriculo(CurriculoID);
	
ALTER TABLE NivelCurriculo
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);
	
#-----------------------------------------------------
	
ALTER TABLE Unidad
	ADD FOREIGN KEY (AsignaturaID)
	REFERENCES Asignatura(AsignaturaID);

ALTER TABLE Unidad
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(CicloID);

#-----------------------------------------------------
	
ALTER TABLE TipoActividad
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(InstitucionID);
	
ALTER TABLE TipoActividad
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(EstadoID);

#-----------------------------------------------------
	
ALTER TABLE Actividad
	ADD FOREIGN KEY (TipoActividadID)
	REFERENCES TipoActividad(TipoActividadID);

ALTER TABLE Actividad
	ADD FOREIGN KEY (UnidadID)
	REFERENCES Unidad(UnidadID);
	
ALTER TABLE Actividad
	ADD FOREIGN KEY (SeccionID)
	REFERENCES Seccion(SeccionID);
	
#-----------------------------------------------------

ALTER TABLE Curso
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(CicloID);

ALTER TABLE Curso
	ADD FOREIGN KEY (AsignaturaID)
	REFERENCES Asignatura(AsignaturaID);
	
ALTER TABLE Curso
	ADD FOREIGN KEY (SeccionID)
	REFERENCES Seccion(SeccionID);
	
#-----------------------------------------------------

#-----------------------------FIN DE MÓDULO DE ORGANIZACIÓN ACADÉMICA--------------------------------
	
	
ALTER TABLE Matricula
	ADD FOREIGN KEY (InstitucionPersonaID)
	REFERENCES InstitucionPersona(ID);
	
ALTER TABLE Matricula
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(ID);
	
ALTER TABLE Matricula
	ADD FOREIGN KEY (NivelID)
	REFERENCES Nivel(ID);
	
	
ALTER TABLE MatriculaSeccion
	ADD FOREIGN KEY (MatriculaID)
	REFERENCES Matricula(ID);

ALTER TABLE MatriculaSeccion
	ADD FOREIGN KEY (SeccionID)
	REFERENCES Seccion(ID);

	
ALTER TABLE Nota
	ADD FOREIGN KEY (ActividadID)
	REFERENCES Actividad(ID);
	
ALTER TABLE Nota
	ADD FOREIGN KEY (MatriculaID)
	REFERENCES Matricula(ID);
	

ALTER TABLE Profesor
	ADD FOREIGN KEY (InstitucionPersonaID)
	REFERENCES InstitucionPersona(ID);
	
ALTER TABLE Profesor
	ADD FOREIGN KEY (CursoID)
	REFERENCES Curso(ID);
