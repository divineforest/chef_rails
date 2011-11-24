#!/bin/bash

chef_binary=/opt/ruby-enterprise-1.8.7-2011.03/bin/chef-solo

"$chef_binary" -c /home/app/chef/solo.rb -j /home/app/chef/solo.json
