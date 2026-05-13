--procedimientos

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_sugerencia` (IN `p_id_sugerencia` INT, OUT `p_dni_persona` VARCHAR(9), OUT `p_nombre_persona` VARCHAR(50), OUT `p_mail` VARCHAR(100), OUT `p_descripcion` VARCHAR(1000), OUT `p_fecha_creacion` DATE)   BEGIN
    SELECT dni_persona, nombre_persona, mail, descripcion, fecha_creacion
    INTO p_dni_persona, p_nombre_persona, p_mail, p_descripcion, p_fecha_creacion
    FROM sugerencia
    WHERE id_sugerencia = p_id_sugerencia;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `contar_sugerencias_persona` (IN `p_dni` VARCHAR(9), OUT `p_total` INT)   BEGIN
    SELECT COUNT(*) INTO p_total
    FROM sugerencia
    WHERE dni_persona=p_dni;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_sugerencia` (IN `p_id_sugerencia` INT)   BEGIN
    DELETE FROM sugerencia WHERE id_sugerencia = p_id_sugerencia;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_sugerencia` (IN `p_dni_persona` VARCHAR(9), IN `p_nombre_persona` VARCHAR(50), IN `p_mail` VARCHAR(100), IN `p_descripcion` TEXT, IN `p_fecha_creacion` DATE)   BEGIN
    INSERT INTO sugerencia (dni_persona, nombre_persona, mail, descripcion, fecha_creacion)
    VALUES (p_dni_persona, p_nombre_persona, p_mail, p_descripcion, p_fecha_creacion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_sugerencia` (IN `p_id_sugerencia` INT, IN `p_dni_persona` VARCHAR(9), IN `p_nombre_persona` VARCHAR(50), IN `p_mail` VARCHAR(100), IN `p_descripcion` TEXT, IN `p_fecha_creacion` DATE)   BEGIN
    UPDATE sugerencia
    SET dni_persona = p_dni_persona, nombre_persona = p_nombre_persona, mail = p_mail, descripcion = p_descripcion, fecha_creacion = p_fecha_creacion
    WHERE id_sugerencia = p_id_sugerencia;
END$$

DELIMITER ;

--triggers (tabla sugerencia)

DELIMITER $$
CREATE TRIGGER `borrar_sugerencia` AFTER DELETE ON `sugerencia` FOR EACH ROW BEGIN
    INSERT INTO Historicos_borrados (tabla_afectada, fecha_modificacion, datos_anteriores)
    VALUES ('Sugerencia', CURDATE(), CONCAT('id=', OLD.id_sugerencia, ' | ', 'dni=', OLD.dni_persona, ' | ', 'nombre=', OLD.nombre_persona, ' | ', 'mail=', OLD.mail, ' | ', 'descripcion=', OLD.descripcion, ' | ', 'fecha_creacion=', OLD.fecha_creacion));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modificar_sugerencia` AFTER UPDATE ON `sugerencia` FOR EACH ROW BEGIN
    INSERT INTO Historicos_modificados (tabla_afectada, fecha_modificacion, datos_anteriores)
    VALUES ('Sugerencia', CURDATE(), CONCAT('id=', OLD.id_sugerencia, ' | ', 'dni=', OLD.dni_persona, ' | ', 'nombre=', OLD.nombre_persona, ' | ', 'mail=', OLD.mail, ' | ', 'descripcion=', OLD.descripcion, ' | ', 'fecha_creacion=', OLD.fecha_creacion));
END
$$
DELIMITER ;