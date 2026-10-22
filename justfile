# display help information
default:
    @just --list


# clean the project
clean:
    rm -rf .venv/


# install core + dev deps, plus any experiment groups: `just install audio hf`
install *groups:
    uv sync {{ prepend("--group ", groups) }}

# install every group (includes the heavy NeMo stack)
install-all:
    uv sync --all-groups


# format with ruff
format:
    uv tool run ruff format

# lint with ruff
lint:
    uv tool run ruff check

# Run pre-commit [lint, format]"
pre-commit: lint format
    uvx prek run

# test with pytest
test:
    uv run pytest
