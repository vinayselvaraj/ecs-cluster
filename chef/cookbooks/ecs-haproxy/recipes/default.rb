
package 'haproxy'
package 'docker'

service "docker" do
  supports :status => true, :restart => true, :reload => true
  action : [:enable, :start]
end