# /bin/sh

mkdir -p tmp && cd tmp && tree ..
git clone git@github.com:GSA/ECASDAS_BASE_CONFIG.git .
rm -rf .git .gitignore README.md
cp -rf  ./* ../ 
cd .. && rm -fr tmp

# combine drupal file content with shellenv.sh to form cmd.sh
sed '/Drupal/r drupal/script/drupal' shellenv.sh > combine.sh 

# Spin up container
if [ -z "$1" ]
  then
    echo "No Argument"
    sh combine.sh -s drupal9
fi 
