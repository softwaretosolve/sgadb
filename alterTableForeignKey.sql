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
	

ALTER TABLE Materia
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(ID);
	
	
ALTER TABLE InstitucionMateria
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionMateria
	ADD FOREIGN KEY (MateriaID)
	REFERENCES Materia(ID);
	
	
ALTER TABLE CategoriaCiclo
	ADD FOREIGN KEY (CategoriaCicloPadreID)
	REFERENCES CategoriaCiclo(ID);

	
ALTER TABLE InstitucionCategoriaCiclo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionCategoriaCiclo
	ADD FOREIGN KEY (CategoriaCicloID)
	REFERENCES CategoriaCiclo(ID);
	
	
ALTER TABLE Ciclo
	ADD FOREIGN KEY (CategoriaCicloID)
	REFERENCES CategoriaCiclo(ID);
	
ALTER TABLE Ciclo
	ADD FOREIGN KEY (CicloPadreID)
	REFERENCES Ciclo(ID);
	

ALTER TABLE InstitucionCiclo
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionCiclo
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(ID);
	
	
ALTER TABLE CategoriaNivel
	ADD FOREIGN KEY (CategoriaNivelPadreID)
	REFERENCES CategoriaNivel(ID);

	
ALTER TABLE InstitucionCategoriaNivel
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionCategoriaNivel
	ADD FOREIGN KEY (CategoriaNivelID)
	REFERENCES CategoriaNivel(ID);
	
	
ALTER TABLE Nivel
	ADD FOREIGN KEY (CategoriaNivelID)
	REFERENCES CategoriaNivel(ID);
	
ALTER TABLE Nivel
	ADD FOREIGN KEY (NivelPadreID)
	REFERENCES Nivel(ID);
	
	
ALTER TABLE InstitucionNivel
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionNivel
	ADD FOREIGN KEY (NivelID)
	REFERENCES Nivel(ID);
	
	
ALTER TABLE Seccion	
	ADD FOREIGN KEY (InstitucionNivelID)
	REFERENCES InstitucionNivel(ID);
	
ALTER TABLE Seccion
	ADD FOREIGN KEY (EstadoID)
	REFERENCES Estado(ID);

	
ALTER TABLE Asignatura
	ADD FOREIGN KEY (CurriculoID)
	REFERENCES Curriculo(ID);
	
ALTER TABLE Asignatura
	ADD FOREIGN KEY (MateriaID)
	REFERENCES Materia(ID);
	
	
ALTER TABLE InstitucionNivelCurriculo
	ADD FOREIGN KEY (InstitucionNivelID)
	REFERENCES InstitucionNivel(ID);
	
ALTER TABLE InstitucionNivelCurriculo
	ADD FOREIGN KEY (CurriculoID)
	REFERENCES Curriculo(ID);
	
	
ALTER TABLE Unidad
	ADD FOREIGN KEY (AsignaturaID)
	REFERENCES Asignatura(ID);

ALTER TABLE Unidad
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(ID);
	

ALTER TABLE InstitucionTipoActividad
	ADD FOREIGN KEY (InstitucionID)
	REFERENCES Institucion(ID);
	
ALTER TABLE InstitucionTipoActividad
	ADD FOREIGN KEY (TipoActividadID)
	REFERENCES TipoActividad(ID);
	

ALTER TABLE Actividad
	ADD FOREIGN KEY (TipoActividadID)
	REFERENCES TipoActividad(ID);

ALTER TABLE Actividad
	ADD FOREIGN KEY (UnidadID)
	REFERENCES Unidad(ID);
	
	
ALTER TABLE Curso
	ADD FOREIGN KEY (CicloID)
	REFERENCES Ciclo(ID);

ALTER TABLE Curso
	ADD FOREIGN KEY (AsignaturaID)
	REFERENCES Asignatura(ID);
	
ALTER TABLE Curso
	ADD FOREIGN KEY (SeccionID)
	REFERENCES Seccion(ID);

	
	
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
