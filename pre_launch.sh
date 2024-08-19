if [ -d "/home/truello/data" ]; then \
	echo "/data directory already exists"; else \
	mkdir /home/truello/data; \
fi

if [ -d "/home/truello/data/wordpress" ]; then \
	echo "/data/wordpress already exists"; else \
	mkdir /home/truello/data/wordpress; \
fi

if [ -d "/home/truello/data/mariadb" ]; then \
	echo "/data/mariadb already exists"; else \
	mkdir /home/truello/data/mariadb; \
fi

echo "VOLUMES FOLDERS ARE CREATED!"
