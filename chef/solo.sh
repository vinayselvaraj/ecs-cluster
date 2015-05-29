#!/bin/bash

if [ ! -e /usr/bin/chef-solo ]
then
  curl -L https://www.chef.io/chef/install.sh |  bash
fi

/usr/bin/chef-solo -c /chef/solo.rb -j /chef/solo.json
