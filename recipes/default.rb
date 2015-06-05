#
# Cookbook Name:: ecs-haproxy-cassandra-cluster
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'java'
include_recipe 'haproxy'
include_recipe 'docker'
include_recipe 'cassandra::datastax'


#service "ecs-agent" do
#  supports :restart => true, :start => true, :stop => true, :reload => true
#  action :nothing
#end

#template "ecs-agent" do
#  path "/etc/init.d/ecs-agent"
#  source "ecs-agent-init.erb"
#  owner "root"
#  group "root"
#  mode "0755"
#  notifies :enable, "service[ecs-agent]"
#  notifies :start, "service[ecs-agent]"
#end
