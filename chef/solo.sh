#!/bin/bash

if [ ! -e /usr/bin/chef-solo ]
then
  rpm -Uvh https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.6.0-1.el6.x86_64.rpm
fi

/usr/bin/chef-solo -c /chef/solo.rb -j /chef/solo.json
