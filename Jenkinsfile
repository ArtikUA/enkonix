node {
  try {
    stage 'git'
    checkout scm
    
    stage 'install'
    sh "make install"
    
    stage "flake8"
    sh "make flake8"
    
    stage "slack"
    
    slackSend color: 'good', message: 'Build for branch ' + BRANCH_NAME + 'is SUCESS!'
  } catch (err) {
    slackSend color: 'good', message: 'Build is FAIL! ' + BUILD_URL
  }
}
