# Revisar y actualizar el repositorio

`git status` muestra la rama actual y los cambios pendientes.

Para revisar un trabajo sin modificar main:

```sh
git switch actividad-01
git log --oneline
git show HEAD~1:dias/dia-01/actividad/README.md
git diff HEAD~1 HEAD -- dias/dia-01/actividad
```

Para guardar una mejora real:

```sh
git status
git add dias/dia-01/actividad
git commit -m "Actividad 01: explico la unicidad del Tax ID"
git push origin actividad-01
```

Después vuelve a `main` con `git switch main`. Una mejora futura en una rama debe integrarse también en main mediante un merge o pull request. No uses force push para actualizar estos trabajos.

La contraseña de GitHub no sirve como contraseña de `git push` por HTTPS. Usa Git Credential Manager con inicio de sesión del navegador, o una llave SSH correctamente registrada. Nunca subas llaves privadas ni tokens.
