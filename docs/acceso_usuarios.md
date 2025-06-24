# Políticas de Acceso por Rol

## Roles del equipo:
- **Líder del proyecto**: Acceso total (push, merge en main y configuración del repo).
- **Desarrollador**: Solo puede trabajar con Pull Requests en ramas `feature/`, `bugfix/`, etc.
- **Colaborador externo**: Solo lectura y puede crear PRs desde forks.

## Permisos:
- `main` es rama protegida: solo el líder puede hacer push directo.
- Todas las contribuciones de desarrolladores y externos deben hacerse vía Pull Request.
