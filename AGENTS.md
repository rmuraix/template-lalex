# Repository Guidelines

## Project Structure & Module Organization
- `src/main.tex` is the entry point for the LaTeX document.
- `src/style/` contains custom style files (`*.sty`) such as `abstract.sty` and `common.sty`.
- `src/references/refs.bib` holds bibliography entries used by `\addbibresource`.
- Root config files include `package.json` and `.textlintrc.json` for linting.

## Build, Test, and Development Commands
- `npm install` installs the textlint toolchain used for content checks.
- `npm run lint` runs textlint over `*.md` and `*.tex` files and applies fixes.
- `npm test` is a placeholder and currently exits with an error.
- There is no build script in this repository; compile the document with your local LaTeX toolchain (for example, `latexmk -pdf src/main.tex` if available).

## Coding Style & Naming Conventions
- Keep LaTeX indentation consistent with existing files (2 spaces inside environments).
- Prefer descriptive labels with prefixes like `fig:`, `tab:`, and `sec:` (see `src/main.tex`).
- Use `.sty` for shared style helpers and keep them under `src/style/`.
- Run textlint before submitting changes that touch prose or LaTeX text.

## Testing Guidelines
- No automated tests are defined; use `npm run lint` as the main quality gate.
- If you add tests in the future, document the command and expected output here.

## Commit & Pull Request Guidelines
- Commit history follows Conventional Commits (e.g., `feat: add textlint`), so use `type: summary` format (`feat:`, `fix:`, `chore:`, etc.).
- Keep commits focused on a single change and include brief rationale in the body if needed.
- For pull requests, include a short description, list the files touched, and note any LaTeX build steps you ran.
- Follow the organization-level contributing guide linked in `README.md`.

## Notes for Contributors
- If you add new bibliography entries, keep keys consistent (`authorYYYY` style is a good pattern).
- Update `README.md` if you introduce new tooling or workflows.
