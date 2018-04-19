CREATE TABLE t_autor (ID BIGINT NOT NULL, APELLIDOS VARCHAR(255), FECHANACIMIENTO DATE, INDICEH INTEGER, NOMBRE VARCHAR(255), PRIMARY KEY (ID))
CREATE TABLE t_articulo (ID BIGINT NOT NULL, ANIO INTEGER, NUMERO INTEGER, PAGINAFINAL INTEGER, PAGINAINICIAL INTEGER, PUBLICACION VARCHAR(255), TITULO VARCHAR(255), VOLUMEN INTEGER, PRIMARY KEY (ID))
CREATE TABLE Autor_FIRMAS (Autor_ID BIGINT, FIRMAS VARCHAR(255))
CREATE TABLE t_articulo_t_autor (Articulo_ID BIGINT NOT NULL, autores_ID BIGINT NOT NULL, PRIMARY KEY (Articulo_ID, autores_ID))
ALTER TABLE Autor_FIRMAS ADD CONSTRAINT AutorFIRMASAutorID FOREIGN KEY (Autor_ID) REFERENCES t_autor (ID)
ALTER TABLE t_articulo_t_autor ADD CONSTRAINT trtculotautortrsID FOREIGN KEY (autores_ID) REFERENCES t_autor (ID)
ALTER TABLE t_articulo_t_autor ADD CONSTRAINT trtclotautorrtclID FOREIGN KEY (Articulo_ID) REFERENCES t_articulo (ID)
CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(15), PRIMARY KEY (SEQ_NAME))
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0)