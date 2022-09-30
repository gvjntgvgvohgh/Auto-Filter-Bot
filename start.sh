if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hansakaanuhas3/Auto-Filter-Bot.git /Auto-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-Bot
fi
cd /Auto-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
