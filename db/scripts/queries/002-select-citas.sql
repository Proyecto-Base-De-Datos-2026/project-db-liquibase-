-- =========================================================================
-- CONSULTA 2: HISTORIAL DE CITAS DETALLADO CON COSTOS
-- =========================================================================
SELECT 
    c.id_cita,
    c.fecha,
    m.nombre AS nombre_mascota,
    d.nombre AS nombre_dueno,
    v.nombre AS veterinario_atendio,
    p.monto AS valor_pagado
FROM cita c
INNER JOIN mascota m ON c.id_mascota = m.id_mascota
INNER JOIN dueno d ON m.id_dueno = d.id_dueno
INNER JOIN veterinario v ON c.id_veterinario = v.id_veterinario
LEFT JOIN pago p ON c.id_cita = p.id_cita
ORDER BY c.fecha DESC;

-- =========================================================================
--  INTEGRANTE 2:Juan Jose Guzman Bohorquez
-- =========================================================================
SELECT 
    p.id_pago, 
    d.nombre AS cliente, 
    m.nombre AS animal, 
    c.motivo, 
    v.nombre AS medico, 
    p.monto
FROM pago p
INNER JOIN cita c ON p.id_cita = c.id_cita
INNER JOIN mascota m ON c.id_mascota = m.id_mascota
INNER JOIN dueno d ON m.id_dueno = d.id_dueno
INNER JOIN veterinario v ON c.id_veterinario = v.id_veterinario
INNER JOIN historia_clinica hc ON hc.id_cita = c.id_cita;

-- =========================================================================
-- INTEGRANTE 3: Marlon Alexis majarrez polo
-- =========================================================================
SELECT 
    v.nombre AS medico, 
    v.especialidad, 
    m.nombre AS paciente, 
    hc.diagnostico, 
    med.nombre AS farmaco, 
    p.monto AS facturado
FROM veterinario v
INNER JOIN cita c ON v.id_veterinario = c.id_veterinario
INNER JOIN pago p ON c.id_cita = p.id_cita
INNER JOIN mascota m ON c.id_mascota = m.id_mascota
INNER JOIN historia_clinica hc ON hc.id_cita = c.id_cita
INNER JOIN tratamiento t ON hc.id_historia = t.id_historia
INNER JOIN tratamiento_medicamento tm ON t.id_tratamiento = tm.id_tratamiento
INNER JOIN medicamento med ON tm.id_medicamento = med.id_medicamento;
