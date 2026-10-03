# Actividad 06 — solución corregida

Agrego credit_score con rango de 300 a 850 e iban con unicidad. Convierto loans.status de texto a ENUM mediante USING, quitando primero el DEFAULT y restableciéndolo con el nuevo tipo.

Incluyo ACTIVE y escribo PAID con el mismo formato de la clave. Toda la migración, incluida la creación del ENUM, queda dentro de BEGIN/COMMIT; un error debe provocar ROLLBACK.

## Cambios respecto al intento

Completo enum y convierto status junto con su default.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

[Código SQL corregido](solucion.sql).

## Referencia

[Clave del profesor — Actividad 06](https://moodle.umsa.edu.mx/mod/resource/view.php?id=23171). Requiere acceso a Moodle.
