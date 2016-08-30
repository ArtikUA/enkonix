node {
  try {
    p = 6
    
    stage 'git'
    checkout scm
    p++
    
    
    stage 'install'
    sh "make install"
    p++
    
    stage "flake8"
    sh "make flake8"
    p++
    
    slackSend color: 'blue', message: 'Build for branch *' + env.BRANCH_NAME + '* is SUCESS!'
  } catch (err) {
    slackSend color: 'red', message: 'Build for branch *' + env.BRANCH_NAME + '* is FAILED! ' + env.BUILD_URL + '/execution/node/' + p + '/log/'
  }
}
