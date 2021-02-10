#! /bin/sh

echo "Checking..."
if [ ! -n "$1" ]
  then
    echo "please select youer VM machine !"
	exit
else
	docker-machine start $1;
	docker-machine env $1;
	eval $(docker-machine env $1);
	docker-compose up -d;
fi
