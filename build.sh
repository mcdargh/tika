mkdir -p assets 2> /dev/null
pushd assets

# get tika
wget -O tika.jar https://dlcdn.apache.org/tika/2.7.0/tika-app-2.7.0.jar 
chmod +x *.jar

popd

docker build --force-rm -t tika -f Dockerfile assets