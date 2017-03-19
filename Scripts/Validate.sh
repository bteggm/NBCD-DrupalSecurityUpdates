#!/bin/bash
#Validate Drupal has security updates
(echo -n Validate; date) >>/tmp/cdLog.txt
cd /var/www/html/sites/default
/home/ec2-user/.composer/vendor/drush/drush/drush pm-updatestatus --security-only
(echo -n After Validate; date) >>/tmp/cdLog.txt
