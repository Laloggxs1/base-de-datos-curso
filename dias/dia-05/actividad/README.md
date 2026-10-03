# Actividad 05 — solución corregida

Completo las cuatro tablas: customers, accounts, loans y transactions. Corrijo IF NOT EXIST por IF NOT EXISTS, uso nombres de columnas consistentes y agrego PK, UNIQUE, CHECK y FK con nombres explícitos.

Primero creo customers; después accounts y loans; al final transactions. Las FK usan ON DELETE RESTRICT. Esta versión sigue el DDL actual de la clave, donde transactions registra account_id; el modelo conceptual del día 2 tenía origen y destino. Son etapas distintas del curso.

updated_at tiene un valor inicial, pero no se actualiza automáticamente por el DEFAULT.

## Cambios respecto al intento

Completo ddl y restricciones de las cuatro tablas.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Actividad 05](https://moodle.umsa.edu.mx/mod/resource/view.php?id=22907). Requiere acceso a Moodle.
