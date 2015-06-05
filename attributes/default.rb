
node.default['java']['install_flavor']                         = "oracle"
node.default['java']['jdk_version']                            = "8"
node.default['java']['oracle']['accept_oracle_download_terms'] = "true"

node.default['cassandra']['cluster_name']     = "cluster"
node.default['cassandra']['package_name']     = "dsc21"
node.default['cassandra']['version']          = "2.1.5"