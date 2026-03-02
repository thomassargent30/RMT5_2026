# Copilot Instructions

## Project

This repository contains materials for the 5th edition of
*Recursive Macroeconomic Theory* (Ljungqvist & Sargent),
primarily using LaTeX and MyST-MD.

## Tools

- **git** — version control
- **gh** cli — interacting with GitHub (issues, pull requests, etc.)

## Shell safety

Do **not** use shell escaping for constructing complex commands — it is
fragile and error-prone. Instead, write intermediate content to a local
`.tmp/` folder using file-create and file-edit tools, then reference
those files from shell commands.
