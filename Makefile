setup:
	python3 -m venv ~/.MLOps-PSET2
	source ~/.MLOps-PSET2/bin/activate

install:
	pip3 install --upgrade pip &&\
	  pip3 install -r requirements.txt
	
test:
	python3 -m pytest -vv -cov=hello hello_test.py

lint:
	pylint --disable R,C hello.py
	
