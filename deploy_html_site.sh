#!/bin/bash
function deploy-html() {
    
    # installing apache
    sudo yum install -y httpd;

    # starting apache
    sudo service httpd start;

    sudo cp html_website_deploy/site/* var/www/html/;

    # restarting apache web server
    sudo service httpd restart;
}

#calling function.
deploy-html
