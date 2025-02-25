--ACCIONES--
ALTER TABLE Actividad DROP CONSTRAINT FK_ACTIVIDAD;
ALTER TABLE Actividad ADD CONSTRAINT FK_ACTIVADAD FOREIGN KEY(evento) REFERENCES Evento(id_evento) ON DELETE CASCADE;

ALTER TABLE Profesor DROP CONSTRAINT FK_PROFESOR_PERSONA;
ALTER TABLE Profesor ADD CONSTRAINT FK_PROFESOR_PERSONA FOREIGN KEY(tid,nid) REFERENCES Persona(tid, nid) ON DELETE CASCADE;

ALTER TABLE Curso_Profesor DROP CONSTRAINT FK_CURSO_PROFESOR1;
ALTER TABLE Curso_Profesor ADD CONSTRAINT FK_CURSO_PROFESOR1 FOREIGN KEY(tid, nid) REFERENCES Profesor(tid, nid) ON DELETE CASCADE;

ALTER TABLE Curso_Profesor DROP CONSTRAINT FK_CURSO_PROFESOR2;
ALTER TABLE Curso_Profesor ADD CONSTRAINT FK_CURSO_PROFESOR2 FOREIGN KEY(curso) REFERENCES Curso(id_curso) ON DELETE CASCADE;

ALTER TABLE Estudiante DROP CONSTRAINT FK_ESTUDIANTE_PERSONA;
ALTER TABLE Estudiante ADD CONSTRAINT FK_ESTUDIANTE_PERSONA FOREIGN KEY(tid,nid) REFERENCES Persona(tid,nid) ON DELETE CASCADE;

ALTER TABLE Directivo DROP CONSTRAINT FK_DIRECTIVO_PERSONA;
ALTER TABLE Directivo ADD CONSTRAINT FK_DIRECTIVO_PERSONA FOREIGN KEY(tid,nid) REFERENCES Persona(tid,nid) ON DELETE CASCADE;

ALTER TABLE Personal_Ad DROP CONSTRAINT FK_PERSONAL_PERSONAL_AD;
ALTER TABLE Personal_Ad ADD CONSTRAINT FK_PERSONAL_PERSONAL_AD FOREIGN KEY(tid,nid) REFERENCES Persona(tid,nid) ON DELETE CASCADE;

ALTER TABLE Telefonos_Persona DROP CONSTRAINT FK_TELEFONOS_PERSONA;
ALTER TABLE Telefonos_Persona ADD CONSTRAINT FK_TELEFONOS_PERSONA FOREIGN KEY(tid, nid) REFERENCES Persona(tid, nid) ON DELETE CASCADE;

ALTER TABLE Comentario_Noticia DROP CONSTRAINT FK_COMENTARIO_NOTICIA1;
ALTER TABLE Comentario_Noticia ADD CONSTRAINT FK_COMENTARIO_NOTICIA1 FOREIGN KEY(noticia) REFERENCES Noticia(id_noticia) ON DELETE CASCADE;

ALTER TABLE Comentario_Noticia DROP CONSTRAINT FK_COMENTARIO_NOTICIA2;

ALTER TABLE Comentario_Noticia ADD CONSTRAINT FK_COMENTARIO_NOTICIA2 FOREIGN KEY(tid, nid) REFERENCES Persona(tid,nid);

ALTER TABLE Comentario_Noticia DROP CONSTRAINT FK_COMENTARIO_NOTICIA3;
ALTER TABLE Comentario_Noticia ADD CONSTRAINT FK_COMENTARIO_NOTICIA3 FOREIGN KEY (noticia, tid, nid, detalle) REFERENCES Comentario_Noticia(noticia, tid, nid, detalle);

ALTER TABLE Comentario_actividad DROP CONSTRAINT FK_COMENTARIO_ACTIVIDAD1;
ALTER TABLE Comentario_actividad ADD CONSTRAINT FK_COMENTARIO_ACTIVIDAD1 FOREIGN KEY(actividad) REFERENCES Actividad(evento) ON DELETE CASCADE;

ALTER TABLE Comentario_actividad DROP CONSTRAINT FK_COMENTARIO_ACTIVIDAD2;
ALTER TABLE Comentario_actividad ADD CONSTRAINT FK_COMENTARIO_ACTIVIDAD2 FOREIGN KEY(tid, nid) REFERENCES Persona(tid,nid);

ALTER TABLE Comentario_actividad DROP CONSTRAINT FK_COMENTARIO_ACTIVIDAD3;
ALTER TABLE Comentario_actividad ADD CONSTRAINT FK_COMENTARIO_ACTIVIDAD3 FOREIGN KEY(actividad, tid, nid, detalle) REFERENCES Comentario_Actividad(actividad, tid, nid, detalle);

ALTER TABLE Suscripcion DROP CONSTRAINT FK_SUSCRIPCION1;
ALTER TABLE Suscripcion ADD CONSTRAINT FK_SUSCRIPCION1 FOREIGN KEY(actividad) REFERENCES Actividad(evento) ON DELETE CASCADE;

ALTER TABLE Suscripcion DROP CONSTRAINT FK_SUSCRIPCION2;
ALTER TABLE Suscripcion ADD CONSTRAINT FK_SUSCRIPCION2 FOREIGN KEY(tid, nid) REFERENCES Persona(tid,nid) ON DELETE CASCADE;
