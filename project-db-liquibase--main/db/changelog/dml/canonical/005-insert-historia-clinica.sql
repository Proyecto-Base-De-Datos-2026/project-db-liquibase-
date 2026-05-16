--liquibase formatted sql
--changeset grupo-ingenieria:insertar-historias-canonical

UPDATE historia_clinica 
SET diagnostico = 'Paciente sano', 
    observaciones = 'Se aplican refuerzos de vacunas sin novedades. Regresar en un año.' 
WHERE id_cita = 1;

UPDATE historia_clinica 
SET diagnostico = 'Esguince leve', 
    observaciones = 'Trauma menor en la articulación. Se recomienda reposo y analgésicos.' 
WHERE id_cita = 2;

UPDATE historia_clinica 
SET diagnostico = 'Parásitos intestinales', 
    observaciones = 'Se detecta leve carga parasitaria. Se procede a formular tratamiento.' 
WHERE id_cita = 3;