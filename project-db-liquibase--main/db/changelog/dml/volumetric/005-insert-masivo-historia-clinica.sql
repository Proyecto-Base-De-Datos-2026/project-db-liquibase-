--liquibase formatted sql
--changeset grupo-ingenieria:insertar-historias-masivo

UPDATE historia_clinica SET diagnostico = 'Sarro dental severo', observaciones = 'Se realiza profilaxis completa. Requiere cambio de alimento a croquetas duras.' WHERE id_cita = 10;
UPDATE historia_clinica SET diagnostico = 'Dermatitis atópica', observaciones = 'Infección por pulgas. Se formula baño medicado y pipeta antiparasitaria.' WHERE id_cita = 11;
UPDATE historia_clinica SET diagnostico = 'Soplo cardíaco grado II', observaciones = 'Se observa fatiga moderada. Se programa ecocardiograma de control.' WHERE id_cita = 12;
UPDATE historia_clinica SET diagnostico = 'Conjuntivitis bacteriana', observaciones = 'Ojos rojos con secreción purulenta. Aplicar gotas antibióticas.' WHERE id_cita = 13;
UPDATE historia_clinica SET diagnostico = 'Obesidad canina tipo I', observaciones = 'Exceso de peso de 4kg. Se prescribe dieta estricta baja en calorías.' WHERE id_cita = 14;
UPDATE historia_clinica SET diagnostico = 'Hemograma normal', observaciones = 'Resultados de laboratorio perfectos. Paciente en óptimas condiciones.' WHERE id_cita = 15;
UPDATE historia_clinica SET diagnostico = 'Lipoma subcutáneo', observaciones = 'Masa benigna retirada con éxito. Retirar puntos en 10 días.' WHERE id_cita = 16;
UPDATE historia_clinica SET diagnostico = 'Recuperación exitosa', observaciones = 'Evolución favorable de la marcha. Continuar ejercicios en casa.' WHERE id_cita = 17;
UPDATE historia_clinica SET diagnostico = 'Chequeo general sano', observaciones = 'No presenta síntomas patológicos. Vacunas al día.' WHERE id_cita = 18;
UPDATE historia_clinica SET diagnostico = 'Apto para cirugía', observaciones = 'Riesgo anestésico bajo. Listo para procedimiento programado.' WHERE id_cita = 19;
UPDATE historia_clinica SET diagnostico = 'Alopecia por estrés', observaciones = 'Pérdida de pelo en lomo debido a mudanza. Se recomiendan feromonas.' WHERE id_cita = 20;
UPDATE historia_clinica SET diagnostico = 'Gingivitis leve', observaciones = 'Inflamación de encías. Se recomienda crema dental especial.' WHERE id_cita = 21;
UPDATE historia_clinica SET diagnostico = 'Cardiopatía estable', observaciones = 'Paciente responde bien al tratamiento previo. Continuar dosis.' WHERE id_cita = 22;
UPDATE historia_clinica SET diagnostico = 'Transición alimentaria', observaciones = 'Guía entregada al dueño para cambio de comida de cachorro a adulto.' WHERE id_cita = 23;
UPDATE historia_clinica SET diagnostico = 'Herida superficial', observaciones = 'Sutura de 3 puntos en miembro anterior izquierdo. Antiséptico diario.' WHERE id_cita = 24;
UPDATE historia_clinica SET diagnostico = 'Úlcera corneal en proceso', observaciones = 'Lesión ocular disminuyendo de tamaño. Mantener collar isabelino.' WHERE id_cita = 25;
UPDATE historia_clinica SET diagnostico = 'Resultado negativo', observaciones = 'Descarte de leucemia e inmunodeficiencia felina exitoso.' WHERE id_cita = 26;
UPDATE historia_clinica SET diagnostico = 'Displasia de cadera', observaciones = 'Inflamación articular crónica. Se formula analgésico y condroprotector.' WHERE id_cita = 27;
UPDATE historia_clinica SET diagnostico = 'Infestación severa', observaciones = 'Presencia masiva de garrapatas. Aplicar tratamiento sistémico inmediato.' WHERE id_cita = 28;
UPDATE historia_clinica SET diagnostico = 'Cálculo dental', observaciones = 'Requiere programación para detartraje el próximo mes.' WHERE id_cita = 29;
UPDATE historia_clinica SET diagnostico = 'Anemia leve', observaciones = 'Baja concentración de glóbulos rojos. Suplementar con hierro.' WHERE id_cita = 30;
UPDATE historia_clinica SET diagnostico = 'Postoperatorio inmediato', observaciones = 'Esterilización realizada sin complicaciones. Reposo total.' WHERE id_cita = 31;
UPDATE historia_clinica SET diagnostico = 'Alergia al pollo', observaciones = 'Reacción alérgica alimentaria. Cambiar a proteína de salmón.' WHERE id_cita = 32;
UPDATE historia_clinica SET diagnostico = 'Retirada de espina', observaciones = 'Cuerpo extraño extraído del ojo con éxito. Sin daños estructurales.' WHERE id_cita = 33;
UPDATE historia_clinica SET diagnostico = 'Control de desarrollo', observaciones = 'Cachorro creciendo sano y en los rangos de peso ideales.' WHERE id_cita = 34;

--rollback empty