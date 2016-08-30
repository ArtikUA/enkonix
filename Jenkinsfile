node {
  try {
    p = 6
    
    stage 'git'
    checkout scm
    p += 2
    
    stage 'install'
    sh "make install"
    p += 2
    
    stage "flake8"
    sh "make flake8"
    p += 2
    
    stage "slack"
    slackSend color: 'bad', message: "Build for branch *${env.BRANCH_NAME}* is SUCESS!"
  } catch (err) {
    stage "slack"
    slackSend color: 'good', message: "Build for branch *${env.BRANCH_NAME}* is FAILED! Reason: ${err}. ${env.BUILD_URL}execution/node/${p}/log/"
  }
}
