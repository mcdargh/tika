mkdir -p assets 2> /dev/null
pushd assets

#fail on errors
set -e 

# get tika
wget -O tika.jar https://dlcdn.apache.org/tika/2.9.2/tika-app-2.9.2.jar 
chmod +x *.jar

popd

docker build --force-rm -t tika -f Dockerfile assets