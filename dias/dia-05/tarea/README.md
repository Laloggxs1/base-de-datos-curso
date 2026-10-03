# Tarea 05 — solución inicial

Dictamen y defensa de políticas de integridad referencial en OmniBank

Se rechaza el uso de un Delete Cascade en las tablas principales de OmniBank. En un entorno bancario, este comportamiento representa un riesgo crítico, ya que la eliminación accidental o no autorizada de un cliente podría provocar la pérdida automática.

La política oficial de OmniBank será utilizar un DELETE RESTRICT en todas las relaciones críticas y aplicar bajas lógicas mediante campos como [lectura dudosa: is_active] = false o estados como CLOSED. De esta forma el cliente o la cuenta dejan de operar.
Nota: Parte de "comportamiento" llega al borde derecho. El nombre manuscrito del campo de baja lógica es poco claro; se marcó la lectura dudosa.
