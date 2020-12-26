net stop dnsCache
timeout /T 60
sc query state=all type=service > services2.txt
fc services.txt services2.txt > newServices.txt
net start dnsCache