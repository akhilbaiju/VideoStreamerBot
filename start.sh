echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/akhilbaiju/VideoStreamerBot /VideoStreamerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/akhilbaiju/VideoStreamerBot -b $BRANCH /VideoStreamerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
