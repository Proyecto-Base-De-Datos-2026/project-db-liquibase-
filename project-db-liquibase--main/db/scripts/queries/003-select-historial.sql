-- =========================================================================
-- 👤 INTEGRANTE 4:Rosfeller David Castillo
-- CONSULTA AVANZADA CON JOIN DE MÁS DE 5 TABLAS (UNE 8 TABLAS)
-- Pregunta: ¿Cuál es la trazabilidad médica completa de los pacientes (Propietario,
--           Médico, Diagnóstico, Tratamiento y Medicamentos recetados)?
-- =========================================================================
SELECT 
    hc.fecha_registro, 
    m.nombre AS mascota, 
    d.nombre AS dueno,
    v.nombre AS veterinario, 
    hc.diagnostico, 
    t.descripcion AS tratamiento,
    med.nombre AS medicamento
FROM historia_clinica hc
INNER JOIN cita c ON hc.id_cita = c.id_cita
INNER JOIN mascota m ON c.id_mascota = m.id_mascota
INNER JOIN dueno d ON m.id_dueno = d.id_dueno
INNER JOIN veterinario v ON c.id_veterinario = v.id_veterinario
LEFT JOIN tratamiento t ON hc.id_historia = t.id_historia
LEFT JOIN tratamiento_medicamento tm ON t.id_tratamiento = tm.id_tratamiento
LEFT JOIN medicamento med ON tm.id_medicamento = med.id_medicamento
ORDER BY hc.fecha_registro DESC;