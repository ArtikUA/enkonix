node {
  stage 'git'
  checkout scm
  
  stage 'install'
  sh "make install"
  
  slackSend color: 'good', message: 'Everything OK'
  
  stage "flake8"
  sh "make flake8"
  
  stage "slack"
  slackSend color: 'good', message: 'Everything OK'
}
