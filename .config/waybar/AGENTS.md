# AGENTS.md

## Build / Lint / Test Commands
1. **Build** – Start Waybar: `sh waybar.sh`
2. **Lint (Shell scripts)** – Run `shellcheck **/*.sh`
3. **Lint (Python)** – Run `flake8 .`
4. **Test** – No unit tests available; run `waybar --testing` if supported.
5. **Run a single test (pseudo‑case)** – `waybar --testing <test‐name>`

## Code Style Guidelines
- **Shell** – Shebang `#!/usr/bin/env bash` or `sh`, use `set -euo pipefail`, no trailing whitespace.
- **Python** – PEP 8, no more than 79 columns, type hints optional.
- **Imports** – Standard libraries first, third‑party second, project modules last. Keep one import per line.
- **File names** – snake_case for scripts, lower_case with underscores for modules.
- **Function names** – snake_case, descriptive, avoid single letters.
- **Variable names** – snake_case, no single letters unless loop indices.
- **Error handling** – Use `set -e` in bash; exit with non‑zero on failure, provide helpful messages.
- **Documentation** – Add short comment block before each function or script.
- **Formatting** – 4‑space indentation for shell, 2 spaces for Python.
- **Testing** – Add placeholder `test_*.py` files if tests are added later.

## Cursor / Copilot Rules
- No `.cursor/rules/` or `.cursorrules` present.
- No `.github/copilot-instructions.md` present.

## Miscellaneous
- Keep secrets outside of the repo – use separate `.env` if needed.
- Use `waybar` config files under `config`, style under `style.css`.
- Scripts in `scripts/` should be executable (chmod +x).
- Avoid hard‑coding paths; use absolute paths based on `$HOME/.config/waybar`.
