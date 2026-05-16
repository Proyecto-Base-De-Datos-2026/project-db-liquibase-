# 🐾 Sistema de Gestión Veterinaria - Base de Datos Versionada

Este proyecto contiene el diseño físico, datos volumétricos (más de 100 registros de prueba) y la lógica programable (funciones, procedimientos y triggers) distribuidos de forma equitativa entre los integrantes del equipo de ingeniería.

---

## 🛠️ Guía de Ejecución con Docker

Siga este orden estricto de comandos en su terminal para inicializar la infraestructura:

### 1. Levantar el contenedor de la Base de Datos
Enciende PostgreSQL en segundo plano:
```bash
docker compose up -d