if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo "rebuilding binaries for node v${TRAVIS_NODE_VERSION}\n"
  echo `pwd`
  #cd $HOME
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"
  #git clone --quiet --branch=pre-built https://${GH_TOKEN}@github.com/developmentseed/node-sqlite3.git > /dev/null
  #cd node-sqlite3
  #npm install
  #./bin/remake.sh
  git add bin/*
  git commit -m "Travis build ${TRAVIS_BUILD_NUMBER} pushed to pre-built"
  git push -fq origin pre-built > /dev/null
  echo "Finished posting binaries\n"
fi