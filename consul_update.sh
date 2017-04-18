PrjName=$1
EnvName=$2

echo $PrjName $EnvName

sed  s/PrjName/$1/g  git2consul.json >  $PrjName_git2consul.json
sed s/EnvName/$2/g  $PrjName_git2consul.json > $EnvName.json
#cat $PrjName_git2consul_$EnvName.json
sudo git2consul --config-file $EnvName.json -n
#sudo git2consul --config-file /tmp/$PrjName_git2consul.json -n
