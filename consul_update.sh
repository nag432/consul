PrjName=$1
EnvName=$2
TagName=$3

if [ $# -eq 3 ]; then
    echo "Your command line contains $# arguments"
    echo $PrjName $EnvName
    sed  s/PrjName/$1/g  git2consul.json >  $PrjName_git2consul.json
    sed s/EnvName/$2/g  $PrjName_git2consul.json > $EnvName.json
    sed s/TagName/$3/g  $EnvName.json > $TagName.json
    sudo git2consul --config-file $TagName.json -n	
else
    echo "Your command line contains no arguments"
fi
