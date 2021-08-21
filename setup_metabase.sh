sudo apt-get update &&
sudo apt-get install docker.io &&
git clone https://github.com/dacort/metabase-athena-driver.git &&
cd metabase-athena-driver &&
sudo docker build -t metabase/athena . &&
sudo docker run --name metabase-athena -p 3000:3000 metabase/athena
