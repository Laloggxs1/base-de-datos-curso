# Tarea 08 — solución corregida

La clave actual usa un umbral didáctico de 100, no el 10000 de mi libreta. Reviso TRANSFER/WITHDRAWAL desde 100 y también retiros cuya descripción sea NULL, vacía o solo espacios.

Normalizo la descripción con NULLIF(TRIM(...),'') y uso COALESCE. Los paréntesis separan los dos criterios. En el checkpoint de prueba aparecen tres candidatos. Esto es una revisión exploratoria, no una conclusión sobre fraude ni destinatarios.

## Cambios respecto al intento

Actualizo criterios de revisión y normalizo descripciones.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Tarea 08](https://moodle.umsa.edu.mx/mod/resource/view.php?id=24308). Requiere acceso a Moodle.
