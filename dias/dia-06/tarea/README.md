# Tarea 06 — solución inicial

Análisis forense post-mortem

1. Causa raíz del incidente
El incidente se debió a muchas conexiones activas que superaban el límite (max_connections = 100), provocando que la aplicación dejara de funcionar.

2. Solución
Se aumentó el parámetro max_connections, se optimizó el pool de conexiones y se cerraron las conexiones inactivas también se implementó

```sql
ALTER SYSTEM SET max_connections = 200;
SELECT pg_reload_conf();
```

Así se evitan interrupciones.

3. Validación segura posterior
Se revisaron los registros y se confirmó que el problema se resolvió.

```sql
SELECT count(*) FORM pg_stat_activity;
SELECT * FROM pg_stat_activity
WHERE state = 'active';
```
Nota: Se conserva FORM y la explicación de conexiones tal como aparecen, sin sustituirlos por la respuesta de referencia.
