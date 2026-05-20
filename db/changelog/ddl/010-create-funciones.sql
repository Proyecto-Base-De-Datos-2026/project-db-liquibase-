--liquibase formatted sql
--changeset grupo-ingenieria:crear-funciones-sistema endDelimiter:$$

-- =========================================================================
-- INTEGRANTE 1: Carlos Andrés Zuluaga Acuña
-- OBJETIVO: Calcula el dinero total que un dueño ha invertido en sus mascotas
-- =========================================================================
CREATE FUNCTION fn_total_gastado_dueno(p_id_dueno INT) 
RETURNS DECIMAL(10,2) 
LANGUAGE plpgsql
AS $$
DECLARE
    v_total DECIMAL(10,2);
BEGIN
    SELECT COALESCE(SUM(p.monto), 0.00) INTO v_total
    FROM pago p
    JOIN cita c ON p.id_cita = c.id_cita
    JOIN mascota m ON c.id_mascota = m.id_mascota
    WHERE m.id_dueno = p_id_dueno;
    
    RETURN v_total;
END;
$$;

-- =========================================================================
-- INTEGRANTE 2: Juan jose Guzman Bohorquez
-- OBJETIVO: Cuenta cuántas citas completadas tiene una mascota específica
-- =========================================================================
CREATE FUNCTION fn_contar_citas_mascota(p_id_mascota INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_cantidad INT;
BEGIN
    SELECT COUNT(*) INTO v_cantidad
    FROM cita
    WHERE id_mascota = p_id_mascota AND estado = 'completada';
    
    RETURN v_cantidad;
END;
$$;

-- =========================================================================
-- INTEGRANTE 3: Marlon Alexis Manjarrez Polo
-- OBJETIVO: Obtiene el nombre del veterinario que más citas ha atendido
-- =========================================================================
CREATE FUNCTION fn_veterinario_mas_activo()
RETURNS VARCHAR(100)
LANGUAGE plpgsql
AS $$
DECLARE
    v_nombre_vet VARCHAR(100);
BEGIN
    SELECT v.nombre INTO v_nombre_vet
    FROM veterinario v
    JOIN cita c ON v.id_veterinario = c.id_veterinario
    WHERE c.estado = 'completada'
    GROUP BY v.id_veterinario, v.nombre
    ORDER BY COUNT(c.id_cita) DESC
    LIMIT 1;
    
    RETURN COALESCE(v_nombre_vet, 'Sin citas completadas');
END;
$$;

-- =========================================================================
-- INTEGRANTE 4: Rosfeller David Castillo Garzon 
-- OBJETIVO: Calcula la edad promedio de las mascotas de una especie dada
-- =========================================================================
CREATE FUNCTION fn_edad_promedio_especie(p_especie VARCHAR(50))
RETURNS DECIMAL(4,2)
LANGUAGE plpgsql
AS $$
DECLARE
    v_promedio DECIMAL(4,2);
BEGIN
    SELECT COALESCE(AVG(edad), 0.00) INTO v_promedio
    FROM mascota
    WHERE especie = p_especie;
    
    RETURN v_promedio;
END;
$$;

--rollback DROP FUNCTION fn_total_gastado_dueno(INT);
--rollback DROP FUNCTION fn_contar_citas_mascota(INT);
--rollback DROP FUNCTION fn_veterinario_mas_activo();
--rollback DROP FUNCTION fn_edad_promedio_especie(VARCHAR);
