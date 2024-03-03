git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
tfenv install 1.2.5
tfenv use 1.2.5
terraform --version


mkdir home
git clone https://github.com/extracukor/apigw-lambda-rds.git


rm -r apigw-lambda-rds/