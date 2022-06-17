if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/nothing.git /nothing
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /nothing
fi
cd /nothing
pip3 install -U -r requirements.txt
echo "Starting Amalser♥️...."
python3 bot.py
