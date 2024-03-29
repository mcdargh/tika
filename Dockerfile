FROM ubuntu:focal 

ARG JRE=openjdk-17-jre-headless

RUN set -eux \
    && apt-get update \
    && apt-get install --yes --no-install-recommends gnupg2 software-properties-common \
    && add-apt-repository -y ppa:alex-p/tesseract-ocr5 \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends $JRE gdal-bin tesseract-ocr \
    tesseract-ocr-eng tesseract-ocr-ita tesseract-ocr-fra tesseract-ocr-spa tesseract-ocr-deu \
    && echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections \
    && DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends xfonts-utils fonts-freefont-ttf \
    fonts-liberation ttf-mscorefonts-installer wget cabextract \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y  --no-install-recommends xfonts-utils fonts-freefont-ttf fonts-liberation ttf-mscorefonts-installer wget cabextract

COPY tika.jar /tika/tika.jar
COPY tika.sh /tika/tika.sh

RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/tika/tika.sh"]
