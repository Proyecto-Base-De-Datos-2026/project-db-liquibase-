CREATE TABLE pago (
    id_pago          SERIAL         PRIMARY KEY,
    monto            DECIMAL(10,2)  NOT NULL,
    fecha_pago       DATE           NOT NULL,
    metodo_pago      VARCHAR(50)    NOT NULL,
    id_cita          INT            NOT NULL UNIQUE, -- El UNIQUE asegura la relación de 1 a 1 (una cita, un solo pago)

    -- FK: Conecta el dinero cobrado con la cita médica
    -- ON DELETE RESTRICT: Impide borrar una cita del historial si ya tiene una factura o pago registrado
    CONSTRAINT fk_pago_cita
        FOREIGN KEY (id_cita) REFERENCES cita(id_cita)
        ON DELETE RESTRICT,
        
    -- CONSTRAINT CHECK: Filtro de seguridad para que nadie digite cobros en cero o negativos
    CONSTRAINT chk_monto_positivo CHECK (monto > 0.00),
    
    -- CONSTRAINT CHECK: Controla que solo se escriban métodos de pago reales aceptados por el negocio
    CONSTRAINT chk_metodo_pago CHECK (
        metodo_pago IN ('efectivo', 'tarjeta_debito', 'tarjeta_credito', 'transferencia')
    )
);

