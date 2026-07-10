# Fundamentos de Bases de Datos y SQL

---

## Propósito del curso

Este curso está diseñado para proporcionar una formación completa y estructurada en el diseño, consulta y administración de bases de datos relacionales con SQL estándar y sistemas específicos como PostgreSQL y MySQL. El objetivo principal es guiar al estudiante desde los conceptos fundamentales del modelo relacional hasta técnicas avanzadas de optimización, seguridad y bases de datos NoSQL.

Dirigido a desarrolladores, analistas de datos y administradores de bases de datos que desean dominar el diseño de esquemas normalizados, escribir consultas SQL de nivel avanzado, optimizar el rendimiento y comprender cuándo y cómo utilizar bases de datos NoSQL.

---

## Material del curso

La presentación del curso, que contiene el desarrollo completo de todos los temas, está disponible en el siguiente enlace:

[**📊 Presentación del curso - Google Slides**](https://docs.google.com/presentation/d/1LfJHm2LJDu6OKdwNSq3-QY80XgIMNfaRQhvrKE4icxw/edit?usp=sharing)

> **Nota:** La presentación se encuentra en constante actualización y desarrollo.

---

## Temario general

### Módulo 1: Modelo Relacional y Modelado ER
- **Conceptos fundamentales del modelo relacional**:
  - Historia: modelo relacional de E.F. Codd (1970) e IBM System R
  - Tabla (relación), tupla (fila) y atributo (columna)
  - Claves primarias (PK), claves foráneas (FK) y claves candidatas
  - Integridad de entidad y referencial
  - Dominios y tipos de datos
  - SGBD populares: PostgreSQL, MySQL, Oracle, SQL Server, SQLite
- **Modelado Entidad-Relación (ER)**:
  - Entidades, atributos y relaciones: notación de Chen y Crow's Foot
  - Tipos de atributos: simples, compuestos, multivaluados, derivados
  - Cardinalidad: uno-a-uno, uno-a-muchos, muchos-a-muchos
  - Entidades débiles y relaciones de identificación
  - Especialización y generalización (herencia en ER)
  - Diagrama ER extendido (EER)
  - Herramientas: dbdiagram.io, Lucidchart, draw.io, ERDPlus

### Módulo 2: DDL y DML Básico
- **DDL: Crear y modificar esquemas**:
  - CREATE DATABASE, DROP DATABASE, USE y schemas
  - CREATE TABLE con restricciones: PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, DEFAULT, CHECK
  - Tipos de datos: INTEGER, BIGINT, DECIMAL, VARCHAR, TEXT, DATE, TIMESTAMP, BOOLEAN, JSON
  - ALTER TABLE: ADD COLUMN, DROP COLUMN, MODIFY, RENAME, ADD CONSTRAINT
  - DROP TABLE vs TRUNCATE TABLE
  - Sequences y AUTO_INCREMENT
- **DML: Consultas SELECT básicas y avanzadas**:
  - SELECT, FROM, WHERE: filtrado con operadores
  - ORDER BY, LIMIT/OFFSET (paginación), DISTINCT
  - Operadores: BETWEEN, IN, LIKE, IS NULL, IS NOT NULL
  - Funciones de cadena y fecha
  - CASE WHEN THEN ELSE END: expresiones condicionales
  - Funciones de agregación: COUNT, SUM, AVG, MIN, MAX
  - GROUP BY y HAVING
- **JOINs: combinar múltiples tablas**:
  - INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN
  - CROSS JOIN: producto cartesiano
  - SELF JOIN: unir una tabla consigo misma
  - JOIN con múltiples condiciones y tablas puente (many-to-many)
- **INSERT, UPDATE y DELETE**:
  - INSERT INTO: inserción simple, múltiple y desde SELECT
  - UPSERT: INSERT ON CONFLICT DO UPDATE (PostgreSQL) / REPLACE INTO (MySQL)
  - UPDATE con JOINs y subqueries
  - DELETE con condiciones
  - RETURNING clause en PostgreSQL

### Módulo 3: SQL Avanzado
- **Subconsultas**:
  - Subconsultas escalares: retornan un solo valor
  - Subconsultas de múltiples filas: IN, ANY, ALL
  - EXISTS y NOT EXISTS
  - Subconsultas correlacionadas
  - Subconsultas en FROM: tablas derivadas (inline views)
- **CTEs — Common Table Expressions**:
  - Sintaxis: WITH nombre_cte AS (SELECT ...) SELECT ...
  - CTEs múltiples encadenadas
  - CTEs recursivas: WITH RECURSIVE — jerarquías, árboles y grafos
  - CTEs materializadas vs no materializadas
- **Window Functions**:
  - Funciones de clasificación: ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE(n)
  - Funciones de desplazamiento: LAG(), LEAD(), FIRST_VALUE(), LAST_VALUE()
  - Funciones de agregación como ventana: SUM() OVER, AVG() OVER, COUNT() OVER
  - Frames de ventana: ROWS BETWEEN vs RANGE BETWEEN
  - Casos de uso reales: Top-N por categoría, variación porcentual, media móvil

### Módulo 4: Diseño, Normalización y Seguridad SQL
- **Formas normales**:
  - Primera Forma Normal (1NF): atomicidad
  - Segunda Forma Normal (2NF): eliminar dependencias parciales
  - Tercera Forma Normal (3NF): eliminar dependencias transitivas
  - Forma Normal de Boyce-Codd (BCNF)
  - 4NF y 5NF
  - Desnormalización controlada
- **Seguridad SQL: Usuarios, Roles y Privilegios**:
  - Gestión de usuarios: CREATE USER / CREATE ROLE
  - Privilegios sobre objetos: GRANT, REVOKE, WITH GRANT OPTION
  - Roles y herencia de permisos
  - Row-Level Security (RLS)
  - Schemas como capa de seguridad
  - SQL Injection: prevención desde la base de datos

### Módulo 5: Índices, Particionamiento, EXPLAIN y Transacciones
- **Índices y estructuras de almacenamiento**:
  - B-Tree (árbol B+), Hash Index, GIN, GiST
  - Índices compuestos: principio del leftmost prefix
  - Índices parciales, cubiertos (covering index) y de expresión
  - Cuándo NO crear índices
- **Particionamiento de tablas**:
  - Tipos: RANGE, LIST, HASH
  - Beneficios: Partition pruning, mantenimiento por partes
- **Análisis de planes de ejecución**:
  - EXPLAIN y EXPLAIN ANALYZE
  - Nodos del plan: Seq Scan, Index Scan, Index Only Scan
  - Nodos de join: Nested Loop, Hash Join, Merge Join
- **Transacciones y propiedades ACID**:
  - Atomicidad, Consistencia, Aislamiento, Durabilidad
  - Niveles de aislamiento
  - Fenómenos de concurrencia
  - Bloqueos (locks) y deadlocks
  - MVCC (Multi-Version Concurrency Control)

### Módulo 6: Vistas, Stored Procedures y Triggers
- **Vistas y vistas materializadas**:
  - Vistas (VIEW): consultas guardadas como tabla virtual
  - Vistas actualizables
  - Vistas materializadas
  - REFRESH MATERIALIZED VIEW
- **Stored Procedures y Funciones**:
  - Diferencia entre FUNCTION y PROCEDURE
  - PL/pgSQL: bloques, variables, condicionales y bucles
  - Manejo de excepciones
  - RETURNS TABLE
- **Triggers**:
  - BEFORE vs AFTER
  - FOR EACH ROW vs FOR EACH STATEMENT
  - Triggers de INSERT, UPDATE y DELETE
  - Triggers INSTEAD OF

### Módulo 7: Introducción a NoSQL
- **Cuándo usar NoSQL vs SQL**:
  - Teorema CAP: Consistencia, Disponibilidad, Tolerancia a Particiones
  - BASE vs ACID
  - Tipos de NoSQL: Document, Key-Value, Column-Family, Graph, Time-Series
- **MongoDB, Redis y Neo4j**:
  - MongoDB: Documentos BSON, operaciones CRUD, Aggregation Pipeline
  - Redis: Estructuras de datos, TTL, casos de uso
  - Neo4j: Nodos, relaciones y propiedades, Cypher

---

> **Nota:** El material de estudio se encuentra en constante desarrollo. Las contribuciones y sugerencias son bienvenidas.