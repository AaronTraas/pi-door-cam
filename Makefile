# Define required macros here
SHELL = /bin/sh

SRCDIR = ./pidoorcam
TESTDIR = ./tests

clean:
	python3 setup.py clean
	rm -rf build dist .pytest_cache *.egg-info $(SRCDIR)/__pycache__ $(TESTDIR)/__pycache__ MANIFEST

install:
	python3 setup.py install

develop:
	python3 setup.py develop

test-depend:
	pip3 install coverage pytest pytest-runner requests_mock

test: test-depend
	python3 setup.py test

coverage: test-depend
	coverage run setup.py test
	coverage html
