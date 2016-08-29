node {
  sh "virtualenv venv --python=python3"
  sh ". venv/bin/activate"
  sh "pip3 install flake8" 
  sh "flake8 --exclude=venv --max-line-length=120"
}
