echo $BUILD_NUMBER
echo $BUILD_ID
echo $BUILD_DISPLAY_NAME
echo $JOB_NAME
echo $JOB_BASE_NAME
echo $BUILD_TAG
echo $EXECUTOR_NUMBER
echo $NODE_NAME
echo $NODE_LABELS
echo $WORKSPACE
echo $JENKINS_HOME
echo $JENKINS_URL
echo $BUILD_URL
echo $JOB_URL
ls -la
virtualenv venv --python=python3
. venv/bin/activate
pip3 install flake8 
flake8 --exclude=venv --max-line-length=120
