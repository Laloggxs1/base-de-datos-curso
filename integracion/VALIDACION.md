# Comprobación local

Los scripts corregidos se ejecutaron en una base aislada con PGlite 0.5.8 (PostgreSQL en WebAssembly), usando el fixture didáctico documentado en esta carpeta. No se ejecutaron contra la plataforma escolar ni contra una base de producción.

Se verificaron creación de tipos, dominios, tablas y migración; repetición de la semilla sin duplicados ni cobro repetido; UPSERT sin cambiar UUID ni created_at; los seis reportes de los días 8–10; recuentos 4/5/4, producto 80, saldo 19950, volumen 800, promedios 3333.33 y 2500; validación del CHECK y rechazo de descripciones cortas; y baja lógica conservando los cuatro eventos.

Esta prueba comprueba SQL y resultados del fixture, pero no mide bloqueos entre conexiones concurrentes, rendimiento ni datos distintos de la semilla. Las transcripciones originales contienen errores reales y no se usan como scripts ejecutables.
