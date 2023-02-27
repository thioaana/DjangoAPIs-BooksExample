install :
		# Install dependencies
		pip install pip --upgrade pip \
		pip -r requirements.txt

format: 
		# Format Code
		black *.py books/*.py comfig/*.py 

lint:
		pylint --disable=R,C --generated-members=objects *.py books/*.py comfig/*.py

all :	
		install format lint