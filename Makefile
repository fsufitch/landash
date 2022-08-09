PYTHON=$(shell which python || which python3)
$(if ${PYTHON}, , $(error python/python3 not in PATH))

PODMAN=$(shell which podman)
$(if ${PODMAN}, , $(error podman not in PATH))


VENV=$(shell pwd)/venv
IN_VENV=. ${VENV}/bin/activate


${VENV}/bin/activate: pyproject.toml poetry.lock
	${PYTHON} -m pip --version
	${PYTHON} -m venv ${VENV}
	${IN_VENV}; pip install -U pip
	${IN_VENV}; pip --version
	${IN_VENV}; pip install -e .


