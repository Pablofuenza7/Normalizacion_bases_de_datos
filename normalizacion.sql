CREATE DATABASE normalizacion;

CREATE TABLE editoriales
(   
    id_editorial INT NOT NULL PRIMARY KEY,
    nombre_editorial VARCHAR(50) NOT NULL
);

CREATE TABLE libros
(   
    id_libro INT NOT NULL PRIMARY KEY,
    nombre_libro VARCHAR(50) NOT NULL
);

CREATE TABLE editoriales_libros
(   
    idlibro_editlibro INT NOT NULL,
    ideditorial_editlibro INT NOT NULL,
    FOREIGN KEY (idlibros_editlibro) REFERENCES libros(id_libro),
    FOREIGN KEY (ideditorial_editlibro) REFERENCES editoriales(id_editorial)
);

CREATE TABLE lectores
(   
    id_lector INT NOT NULL PRIMARY KEY,
    nombre_lector VARCHAR(30) NOT NULL
);

CREATE TABLE prestamos
(   
    id_prestamo INT NOT NULL PRIMARY KEY,
    idlector_prestamo INT NOT NULL,
    idlibro_prestamo INT NOT NULL,
    fecha_devolucion_prestamo DATE NOT NULL,
    FOREIGN KEY (idlector_prestamos) REFERENCES lectores(id_lector),
    FOREIGN KEY (idlibro_prestamos) REFERENCES libros(id_libro)
);

CREATE TABLE autores
(   
    id_autor INT NOT NULL PRIMARY KEY,
    nombre_autor VARCHAR(30)
);

CREATE TABLE autores_libros
(   
    idautor_autlibro INT NOT NULL,
    idlibro_autlibro INT NOT NULL,
    FOREIGN KEY (idautor_autlibro) REFERENCES autores(id_autor),
    FOREIGN KEY (idlibro_autlibro) REFERENCES libros(id_libro)
);



