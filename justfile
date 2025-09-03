default:
  just --list

lint +MYPY_ARGS="":
  just ruff
  just mypy {{ MYPY_ARGS }}

mypy +ARGS="":
  uv run dmypy -- run {{ ARGS }}

ruff:
  uv run ruff format
  uv run ruff check --fix
