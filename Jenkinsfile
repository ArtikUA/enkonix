node {
  try {
    stage 'git'
    checkout scm
    
    slackSend color: 'good', message: env.NODE_LABELS + ' ' + env.BUILD_TAG + ' ' + currentBuild
    
    stage 'install'
    sh "make install"
    
    stage "flake8"
    sh "make flake8"
    
    stage "slack"
    
    slackSend color: 'bad', message: 'Build for branch *' + env.BRANCH_NAME + '* is SUCESS!'
  } catch (err) {
    slackSend color: 'good', message: 'Build for branch *' + env.BRANCH_NAME + '* is FAILED! ' + env.BUILD_URL
  }
}
