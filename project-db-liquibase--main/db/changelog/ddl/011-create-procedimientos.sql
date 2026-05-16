--liquibase formatted sql
--changeset grupo-ingenieria:crear-procedimientos-sistema endDelimiter:$$

-- =========================================================================
-- INTEGRANTE 1: Carlos Andrés Zuluaga Acuña
-- OBJETIVO: Cancela una cita cambiando su estado y liberando el espacio
-- =========================================================================
CREATE PROCEDURE pr_cancelar_cita(p_id_cita INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE cita
    SET estado = 'cancelada'
    WHERE id_cita = p_id_cita;
END;
$$;

-- =========================================================================
-- INTEGRANTE 2: Integrante_2_Nombre
-- OBJETIVO: Registra una nueva mascota en el sistema
-- =========================================================================
CREATE PROCEDURE pr_registrar_mascota(
    p_id_dueno INT,
    p_nombre VARCHAR(50),
    p_especie VARCHAR(50),
    p_raza VARCHAR(50),
    p_edad INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO mascota (id_dueno, nombre, especie, raza, edad)
    VALUES (p_id_dueno, p_nombre, p_especie, p_raza, p_edad);
END;
$$;

-- =========================================================================
-- INTEGRANTE 3: Integrante_3_Nombre
-- OBJETIVO: Actualiza el teléfono y correo de un dueño existente
-- =========================================================================
CREATE PROCEDURE pr_actualizar_contacto_dueno(
    p_id_dueno INT,
    p_telefono VARCHAR(20),
    p_email VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE dueno
    SET telefono = p_telefono, email = p_email
    WHERE id_dueno = p_id_dueno;
END;
$$;

-- =========================================================================
-- INTEGRANTE 4: Integrante_4_Nombre
-- OBJETIVO: Modifica el estado de un pago (ej. de 'pendiente' a 'completado')
-- =========================================================================
CREATE PROCEDURE pr_cambiar_estado_pago(
    p_id_pago INT,
    p_nuevo_estado VARCHAR(20)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE pago
    SET estado = p_nuevo_estado
    WHERE id_pago = p_id_pago;
END;
$$;

--rollback DROP PROCEDURE pr_cancelar_cita(INT);
--rollback DROP PROCEDURE pr_registrar_mascota(INT, VARCHAR, VARCHAR, VARCHAR, INT);
--rollback DROP PROCEDURE pr_actualizar_contacto_dueno(INT, VARCHAR, VARCHAR);
--rollback DROP PROCEDURE pr_cambiar_estado_pago(INT, VARCHAR);