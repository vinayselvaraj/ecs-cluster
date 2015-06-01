
package 'haproxy'
package 'docker'

service "docker" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

service "ecs-agent" do
  supports :restart => true, :start => true, :stop => true, :reload => true
  action :nothing
end

template "ecs-agent" do
  path "/etc/init.d/ecs-agent"
  source "ecs-agent-init.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :enable, "service[ecs-agent]"
  notifies :start, "service[ecs-agent]"
end

