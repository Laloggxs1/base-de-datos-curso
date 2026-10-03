# Tarea 01 — solución corregida

NFR1: impedir saldos negativos.

NFR2: conservar el cliente mediante baja lógica, por ejemplo is_active=false, en lugar de eliminar su registro físicamente.

NFR3: registrar y actualizar updated_at cuando se modifica una cuenta. Un DEFAULT CURRENT_TIMESTAMP solo inicializa el dato; actualizarlo necesita una regla adicional o que cada UPDATE lo establezca.

## Cambios respecto al intento

Preciso baja lógica, saldos y fecha de modificación.

[Ver el intento original](original.txt). Las partes ilegibles no se reconstruyen como si hubieran estado en la libreta.

## Referencia

[Clave del profesor — Tarea 01](https://moodle.umsa.edu.mx/mod/resource/view.php?id=21769). Requiere acceso a Moodle.
