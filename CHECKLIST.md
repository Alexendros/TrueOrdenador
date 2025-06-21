
✅ CHECKLIST DE DESARROLLO Y SEGURIDAD – TRUEORDENADOR
🎯 Antes de programar

    Ubuntu LTS/Debian estable (o equivalente seguro) instalado
    Usuario no-root creado para desarrollo
    Entorno virtual de Python activo (venv o poetry)
    Dependencias del sistema listadas en docs/requirements-system.md
    .env y secretos excluidos en .gitignore
    Script scripts/setup.sh listo para automatizar instalaciones

🛠️ Buenas prácticas de código

    El código cumple PEP8 y pasa black
    Tipado y linting (mypy, flake8) sin errores
    Cada módulo separado según su propósito (core, extractors, ui, utils)
    Test unitario para cada módulo nuevo o modificado
    Docstrings y comentarios en español neutro y, si aplica, en inglés técnico

🌱 Git y ramas

    Trabajo en rama feature/hotfix, nunca directamente en main
    Pull Request incluye tests, referencias y pasa CI/CD
    Changelog actualizado
    Revisado y aprobado por code owner antes de fusionar

🧪 CI/CD y testing

    Workflows de GitHub Actions funcionando (.github/workflows/ci.yml)
    Tests de integración y linting pasan antes del merge
    Cobertura mínima del 80%
    Badges de estado y cobertura visibles en el README

🔒 Seguridad

    Bandit/Safety sin vulnerabilidades tras cada push
    CVEs de dependencias revisados y documentados
    Claves/tokens/secretos nunca en el código ni en commits
    Uso de GitHub Secrets para variables de CI/CD
    Logs críticos gestionados y protegidos conforme a GDPR

📦 Release y documentación

    README con instrucciones claras y ejemplos de uso
    LICENSE y CODEOWNERS presentes y visibles
    CONTRIB.md y plantillas de Issues/PR actualizadas
    Releases etiquetados con SemVer y changelog automático
    Documentación y diagramas reflejan los últimos cambios relevantes

🚨 Prevención y respuesta rápida

    Pruebas locales (make test o script equivalente) ejecutadas antes del push
    Script de rollback o restauración disponible y probado
    Monitorización de CI/CD y alertas automáticas activas
    Backups automáticos de datos críticos si aplica

🤝 Comunidad y gobernanza

    Acceso restringido solo a entidades verificadas
    Revisión ética/legal antes de aceptar integraciones externas
    Canales de contacto de seguridad operativos

    Marca cada casilla antes de hacer push, abrir un PR o publicar una release estable. No avances si algún ítem no está 100% cumplido.

✅ TRUEORDENADOR – DEVELOPMENT & SECURITY CHECKLIST
🎯 Before you start coding

    Ubuntu LTS/Debian stable (or equivalent) installed
    Non-root user created for development
    Python virtual environment (venv or poetry) active
    System dependencies listed in docs/requirements-system.md
    .env and secrets excluded via .gitignore
    scripts/setup.sh ready for automated setup

🛠️ Code quality

    Code follows PEP8 and passes black
    Typing and linting (mypy, flake8) with no errors
    Each module separated by purpose (core, extractors, ui, utils)
    Unit tests for every new or modified module
    Docstrings and comments in neutral Spanish and, when relevant, technical English

🌱 Git workflow

    Working on a feature/hotfix branch, never directly on main
    Pull Request includes tests, references, and passes CI/CD
    Changelog updated
    Reviewed and approved by a code owner before merge

🧪 CI/CD and testing

    GitHub Actions workflows in place (.github/workflows/ci.yml)
    Integration tests and linting pass before merge
    Minimum 80% test coverage
    Status and coverage badges visible in README

🔒 Security

    Bandit/Safety reports no vulnerabilities after each push
    Dependency CVEs reviewed and documented
    No keys/tokens/secrets in code or commits
    GitHub Secrets used for all CI/CD variables
    Critical logs managed and protected (GDPR-compliant)

📦 Release and documentation

    README includes clear instructions and usage examples
    LICENSE and CODEOWNERS files present and visible
    CONTRIB.md and issue/PR templates up to date
    Releases tagged with SemVer and automatic changelog
    Documentation and diagrams reflect latest relevant changes

🚨 Prevention & rapid response

    Local tests (make test or equivalent) run before each push
    Rollback or restore script available and tested
    CI/CD monitoring and automatic alerts enabled
    Automatic backup of critical data if applicable

🤝 Community & governance

    Access restricted to verified entities only
    Ethical/legal review before accepting external integrations
    Security contact channels operational

    Check every box before pushing, opening a PR, or publishing a stable release. Do not proceed if any item is incomplete.
