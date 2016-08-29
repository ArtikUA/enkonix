node {
  stage 'git'
  git url: 'https://github.com/ArtikUA/enkonix'
  
  stage 'install'
  sh "make install"
  
  stage "flake8"
  sh "make flake8"
}
