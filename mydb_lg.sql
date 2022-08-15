CREATE TABLE IF NOT EXISTS mydb.Dueno (
  DNI INT(255) NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Apellido VARCHAR(45) NOT NULL,
  Telefono INT(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (DNI),
  UNIQUE INDEX DNI_UNIQUE (DNI ASC) VISIBLE,
  CONSTRAINT created_by
    FOREIGN KEY (DNI)
    REFERENCES mydb.Perro (id_perro)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS mydb.Perro (
  id_perro INT(45) NOT NULL,
  Nombre VARCHAR(255) NOT NULL,
  Fecha_nac INT(32) NOT NULL,
  Sexo VARCHAR(20) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  DNI_Dueno INT(255) NULL,
  PRIMARY KEY (`id_perro`));
  
  CREATE TABLE IF NOT EXISTS mydb.Historial (
  idHistorial INT NOT NULL,
   Fecha INT(45) NOT NULL,
  Perro VARCHAR(45) NOT NULL,
Descripcion VARCHAR(45) NOT NULL,
  Monto INT(45) NOT NULL,
  PRIMARY KEY (Perro, idHistorial),
  INDEX created_by_idx (idHistorial ASC) VISIBLE,
  CONSTRAINT created_by
    FOREIGN KEY (idHistorial)
    REFERENCES mydb.Perro (id_perro)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into Perro ( id_perro,Nombre, Fecha_nac,Sexo,DNI_Dueno) values ('124', "Firulas",22-05-2020,"macho","Avellaneda 315",29844555);
insert into Historial (idHistorial,Fecha,Descripcion,Monto) values (115, 12-04-22, "Corte de pelo", 2000);
