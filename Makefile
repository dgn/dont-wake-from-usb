install:
	cp dont-wake-from-usb.service /usr/lib/systemd/user/
	cp dont-wake-from-usb.sh /usr/bin/
	systemctl enable /usr/lib/systemd/user/dont-wake-from-usb.service
