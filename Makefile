jenkins:
	virtualenv venv --python=python3
	. venv/bin/activate 
	pip3 install flake8
	flake8 --exclude=venv --max-line-length=120
