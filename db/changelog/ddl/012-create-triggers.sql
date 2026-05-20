-- =========================================================================
-- INTEGRANTE 1: Carlos Andrés Zuluaga Acuña
-- OBJETIVO: Trigger que simula una alerta/notificación al crear una nueva cita
-- =========================================================================
CREATE FUNCTION fn_tr_alerta_nueva_cita()
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    RAISE NOTICE 'ALERTA: Se ha programado una nueva cita para la mascota con ID %', NEW.id_mascota;
    RETURN NEW;
END;
$$;

CREATE TRIGGER tr_alerta_nueva_cita
AFTER INSERT ON cita
FOR EACH ROW
EXECUTE FUNCTION fn_tr_alerta_nueva_cita();


-- =========================================================================
-- INTEGRANTE 2: Juan Jose Guzman Bohorquez
-- OBJETIVO: Evita que se registren mascotas con edad negativa o exagerada
-- =========================================================================
CREATE FUNCTION fn_tr_validar_edad_mascota()
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    IF NEW.edad < 0 OR NEW.edad > 30 THEN
        RAISE EXCEPTION 'La edad de la mascota debe estar entre 0 y 30 años.';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER tr_validar_edad_mascota
BEFORE INSERT OR UPDATE ON mascota
FOR EACH ROW
EXECUTE FUNCTION fn_tr_validar_edad_mascota();


-- =========================================================================
-- INTEGRANTE 3: Marlon Alexis Majarrez Polo
-- OBJETIVO: Crea un historial clínico vacío automáticamente cuando se registra una nueva cita
-- =========================================================================
CREATE FUNCTION fn_tr_crear_historial_automatico()
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    INSERT INTO historia_clinica (diagnostico, observaciones, id_cita)
    VALUES ('Pendiente por diagnóstico', 'Historial abierto automáticamente al registrar la cita.', NEW.id_cita);
    RETURN NEW;
END;
$$;

CREATE TRIGGER tr_crear_historial_automatico
AFTER INSERT ON cita
FOR EACH ROW
EXECUTE FUNCTION fn_tr_crear_historial_automatico();


-- =========================================================================
-- INTEGRANTE 4: Rosfeller castillo Garzon
-- OBJETIVO: Auditoría básica que registra la fecha en que se actualizó un pago
-- =========================================================================
CREATE FUNCTION fn_tr_auditoria_pagos()
RETURNS TRIGGER 
LANGUAGE plpgsql 
AS $$
BEGIN
    RAISE NOTICE 'AUDITORÍA: El pago ID % cambió de estado a % el %', NEW.id_pago, NEW.estado, NOW();
    RETURN NEW;
END;
$$;

CREATE TRIGGER tr_auditoria_pagos
AFTER UPDATE ON pago
FOR EACH ROW
EXECUTE FUNCTION fn_tr_auditoria_pagos();

--rollback DROP TRIGGER tr_alerta_nueva_cita ON cita; DROP FUNCTION fn_tr_alerta_nueva_cita();
--rollback DROP TRIGGER tr_validar_edad_mascota ON mascota; DROP FUNCTION fn_tr_validar_edad_mascota();
--rollback DROP TRIGGER tr_crear_historial_automatico ON cita; DROP FUNCTION fn_tr_crear_historial_automatico();
--rollback DROP TRIGGER tr_auditoria_pagos ON pago; DROP FUNCTION fn_tr_auditoria_pagos();
