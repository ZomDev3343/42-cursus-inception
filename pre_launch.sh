if [ -d "/home/truello/data/wordpress" ]; then \
	echo "/data/wordpress already exists"; else \
	sudo mkdir -p /home/truello/data/wordpress; \
fi

if [ -d "/home/truello/data/mariadb" ]; then \
	echo "/data/mariadb already exists"; else \
	sudo mkdir -p /home/truello/data/mariadb; \
fi
