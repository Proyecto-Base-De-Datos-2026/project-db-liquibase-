CREATE TABLE veterinario (

    id_veterinario SERIAL        PRIMARY KEY,
    nombre         VARCHAR(100)  NOT NULL,
    especialidad   VARCHAR(100)  NOT NULL,
    correo         VARCHAR(150)  UNIQUE,

    -- activo: dice si el veterinario sigue trabajando
    -- por defecto es TRUE cuando se registra
    activo         BOOLEAN       NOT NULL DEFAULT TRUE,

    -- CHECK: solo acepta estas especialidades
    -- si escriben otra la base de datos la rechaza
    CONSTRAINT chk_especialidad CHECK (
        especialidad IN (
            'general','cirugía','dermatología',
            'cardiología','ortopedia','odontología','otro'
        )
    ),

    -- CHECK: si tiene correo debe tener @ y punto
    CONSTRAINT chk_correo_vet CHECK (
        correo IS NULL OR correo LIKE '%@%.%'
    )
);

-- ÍNDICE: acelera buscar solo veterinarios activos
CREATE INDEX idx_vet_activo ON veterinario(activo);