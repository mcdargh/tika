mkdir -p assets/libs 2> /dev/null

pushd assets

# get tika
wget https://dlcdn.apache.org/tika/2.4.0/tika-app-2.4.0.jar 
chmod +x *.jar

cd libs

# get jai core
wget https://github.com/jai-imageio/jai-imageio-core/releases/download/jai-imageio-core-1.4.0/jai-imageio-core-1.4.0.jar 
# get jai jpeg
wget https://github.com/jai-imageio/jai-imageio-jpeg2000/releases/download/jai-imageio-jpeg2000-1.4.0/jai-imageio-jpeg2000-1.4.0.jar 
#get pdfbox
wget https://www.apache.org/dyn/closer.lua/pdfbox/2.0.26/pdfbox-app-2.0.26.jar 
# get sqlite
wget https://github.com/xerial/sqlite-jdbc/releases/download/3.36.0.3/sqlite-jdbc-3.36.0.3.jar 

chmod +x *.jar
popd

docker build --force-rm -t tika -f Dockerfile assets