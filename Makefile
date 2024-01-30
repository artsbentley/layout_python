init:
	poetry init --dependency=loguru --dependency=icecream
	echo "[tool.pyright]" >> pyproject.toml
	echo 'reportMatchNotExhaustive = "error"' >> pyproject.toml
	poetry lock --no-update
	poetry install --no-root
	direnv allow
