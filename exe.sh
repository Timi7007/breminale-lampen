currentnodes="$(sh ./dependencies/get-nodes.sh)"
minimalcriticalnodes="45"

currentmax="$(sh ./dependencies/get-highscore.sh)"
prevmax="$(cat ./temp/prevmax.txt)"

echo Current Max. Clients: $currentmax
echo Previous Highscore: $prevmax

echo Current Nodes: $currentnodes
echo Minimal Nodes: $minimalcriticalnodes

if [ "$currentnodes" -lt "$minimalcriticalnodes" ]
  then
    echo 'Oh Shit!'
    sh ./dependencies/alarm.sh
  else
    if [ "$currentmax" -gt "$prevmax" ]
      then
        echo $currentmax > ./temp/prevmax.txt
        echo 'Highscore!'
        sh ./dependencies/highscore.sh
      else
        sh ./dependencies/reset.sh
    fi
fi
