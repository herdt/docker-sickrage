#! /bin/sh

mkdir -p /sr-config
mkdir -p /sr-config/cache

cd /sickrage
if [ -f /sr-config/config.ini ]
then
	rm -rf /sickrage/config.ini
	rm -rf /sickrage/sickbeard.db
	rm -rf /sr-config/sickbeard.db.v32
	rm -rf /sr-config/sickbeard.db.v33
	rm -rf /sr-config/sickbeard.db.v34
	rm -rf /sr-config/sickbeard.db.v35
	rm -rf /sr-config/sickbeard.db.v36
	rm -rf /sr-config/sickbeard.db.v37
	rm -rf /sr-config/sickbeard.db.v38
	rm -rf /sr-config/sickbeard.db.v39
	rm -rf /sr-config/sickbeard.db.v40
	rm -rf /sr-config/sickbeard.db.v41
	rm -rf /sr-config/sickbeard.db.v42
	rm -rf /sr-config/sickbeard.db.v43
	rm -rf /sr-config/sickbeard.db.v44
else
	touch /sr-config/config.ini
	touch /sr-config/sickbeard.db
	touch /sr-config/sickbeard.db.v32
	touch /sr-config/sickbeard.db.v33
	touch /sr-config/sickbeard.db.v34
	touch /sr-config/sickbeard.db.v35
	touch /sr-config/sickbeard.db.v36
	touch /sr-config/sickbeard.db.v37
	touch /sr-config/sickbeard.db.v38
	touch /sr-config/sickbeard.db.v39
	touch /sr-config/sickbeard.db.v40
	touch /sr-config/sickbeard.db.v41
	touch /sr-config/sickbeard.db.v42
	touch /sr-config/sickbeard.db.v43
	touch /sr-config/sickbeard.db.v44
	cp -fr /sickrage/cache/* /sr-config/cache/
#	mv -f /sickbeard/autoprocesstv/autoProcessTV.cfg /sr-config/autoProcessTV.cfg
fi
ln -sf /sr-config/config.ini /sickrage/config.ini
ln -sf /sr-config/sickbeard.db* /sickrage/
#ln -sf /sr-config/cache /sickrage/cache
#ln -sf /sr-config/autoProcessTV.cfg sickbeard/autoprocesstv/autoProcessTV.cfg

/usr/bin/python SickBeard.py
