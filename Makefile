create: key.pem
	@echo -e "\nCreating theme...\n"
	./crxmake chrome_theme key.pem

key.pem:
	@echo -e "\nCreating key to be used by the theme...\n"
	openssl genrsa -out rsa.pem 768
	openssl pkcs8 -topk8 -nocrypt -in rsa.pem -out key.pem
	rm rsa.pem

clean:
	rm -f *.crx *.pem


