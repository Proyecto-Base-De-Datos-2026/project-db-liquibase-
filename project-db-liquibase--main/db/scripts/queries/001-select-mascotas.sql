-- =========================================================================
-- CONSULTA 1: LISTADO GENERAL DE MASCOTAS CON SUS DUEÑOS
-- =========================================================================
SELECT 
    m.id_mascota,
    m.nombre AS nombre_mascota,
    m.especie,
    m.raza,
    d.nombre AS nombre_dueno,
    d.telefono AS contacto_dueno
FROM mascota m
INNER JOIN dueno d ON m.id_dueno = d.id_dueno
ORDER BY d.nombre ASC;

-- =========================================================================
-- 👤 INTEGRANTE 1: [Escribir aquí el Nombre del Integrante 3]
-- CONSULTA AVANZADA CON JOIN DE MÁS DE 5 TABLAS (UNE 7 TABLAS)
-- Pregunta: ¿Qué fármacos se consumen según el perfil de raza del paciente?
-- =========================================================================
SELECT 
    med.nombre AS farmaco, 
    t.descripcion AS tratamiento, 
    hc.diagnostico, 
    m.nombre AS paciente, 
    m.raza, 
    d.nombre AS propietario
FROM medicamento med
INNER JOIN tratamiento_medicamento tm ON med.id_medicamento = tm.id_medicamento
INNER JOIN tratamiento t ON tm.id_tratamiento = t.id_tratamiento
INNER JOIN historia_clinica hc ON t.id_historia = hc.id_historia
INNER JOIN cita c ON hc.id_cita = c.id_cita
INNER JOIN mascota m ON c.id_mascota = m.id_mascota
INNER JOIN dueno d ON m.id_dueno = d.id_dueno;