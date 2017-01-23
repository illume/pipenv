tests:
	pipenv run pytest test_pipenv.py
init:
	pip install pipenv
	pipenv install --dev
	# Do not run if we are on python2.6. Where -m doesn't work well.
	if [[ $(python -c "import sys;print(sys.version)") != "2.6"* ]]; then python -m pipenv check; fi
