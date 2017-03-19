#!/bin/bash
#Update Drupal with latest Security Updates
(echo -n DoUpdate; date) >> /tmp/cdLog.txt
cd /var/www/html/sites/default
/home/ec2-user/.composer/vendor/drush/drush/drush vset site_offline 1
sleep 2
(echo -n Before drush; date) >>/tmp/cdLog.txt
/home/ec2-user/.composer/vendor/drush/drush/drush -y pm-update --security-only
(echo -n After drush; date) >>/tmp/cdLog.txt
