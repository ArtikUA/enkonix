node {
  try {
    stage 'git'
    checkout scm
    
    stage 'install'
    sh "make install"
    
    stage "flake8"
    sh "make flake8"
    
    stage "slack"
  } catch (err) {
    slackSend color: 'good', message: 'Build is FAIL! Reason: ' + err
  }
}
