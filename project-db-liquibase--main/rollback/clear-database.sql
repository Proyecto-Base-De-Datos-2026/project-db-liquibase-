-- =========================================================================
-- SCRIPT DE ROLLBACK TOTAL - LIMPIEZA ABSOLUTA DE LA BASE DE DATOS
-- =========================================================================

-- 1. Eliminar Triggers y Procedimientos/Funciones de los integrantes
DROP TRIGGER IF EXISTS trg_auditoria_pagos ON pago;
DROP TRIGGER IF EXISTS trg_alerta_treatment_costoso ON pago;
DROP TRIGGER IF EXISTS trg_limitar_citas_veterinario ON cita;
DROP TRIGGER IF EXISTS trg_bloquear_modificacion_historia ON historia_clinica;

DROP PROCEDURE IF EXISTS prc_registrar_alta_medica;
DROP PROCEDURE IF EXISTS prc_agendar_cita_emergencia;
DROP PROCEDURE IF EXISTS prc_aplicar_descuento_pago;
DROP PROCEDURE IF EXISTS prc_actualizar_telefono_dueno;

DROP FUNCTION IF EXISTS fn_calcular_total_ingresos;
DROP FUNCTION IF EXISTS fn_contar_citas_mascota;
DROP FUNCTION IF EXISTS fn_obtener_historial_medico;
DROP FUNCTION IF EXISTS fn_verificar_disponibilidad_veterinario;

-- 2. Eliminar Tablas Intermedias y Transaccionales (Orden inverso por llaves foráneas)
DROP TABLE IF EXISTS tratamiento_medicamento CASCADE;
DROP TABLE IF EXISTS pago CASCADE;
DROP TABLE IF EXISTS medicamento CASCADE;
DROP TABLE IF EXISTS tratamiento CASCADE;
DROP TABLE IF EXISTS historia_clinica CASCADE;
DROP TABLE IF EXISTS cita CASCADE;

-- 3. Eliminar Tablas Maestras Base
DROP TABLE IF EXISTS veterinario CASCADE;
DROP TABLE IF EXISTS mascota CASCADE;
DROP TABLE IF EXISTS dueno CASCADE;