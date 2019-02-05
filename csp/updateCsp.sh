#!/bin/bash
csp=$(curl -s https://raw.githubusercontent.com/ArkaneNetwork/security/master/csp/header.txt)
csp=$(echo "$csp" | sed 's/\//\\\//g')

sed -i "s/[ ]{1,}add_header Content-Security-Policy.*/    add_header Content-Security-Policy $csp/g" $1;


cat $1;
root@website-nginx:/etc/nginx/sites-enabled# nano updateCsp.sh 
root@website-nginx:/etc/nginx/sites-enabled# cat updateCsp.sh 
#!/bin/bash
csp=$(curl -s https://raw.githubusercontent.com/ArkaneNetwork/security/master/csp/header.txt);
csp=$(echo "$csp" | sed 's/\//\\\//g');

sed -i "s/[ ]{1,}add_header Content-Security-Policy.*/    add_header Content-Security-Policy $csp/g" $1;

cat $1;
