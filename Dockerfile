FROM dsmaher/base

RUN \
	apt-get update ; \
	apt-get install -y git python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan && \
	cd /opt ; \
	git clone https://github.com/golismero/golismero.git ; \
	cd golismero ; \
	pip install -r requirements.txt && \
	pip install -r requirements_unix.txt && \
	ln -s /opt/golismero/golismero.py /usr/bin/golismero

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

