package 'td-agent' do
  action :install
  version node['td_agent']['version']
end

directory File.join(node['td_agent']['conf_dir'], 'conf.d') do
  group 'root'
  owner 'root'
  mode '0755'
end

template File.join(node['td_agent']['conf_dir'], 'td-agent.conf') do
  group 'root'
  owner 'root'
  mode '0644'
  source 'td_agent.conf.erb'
  notifies :restart, 'service[td-agent]'
end

service 'td-agent' do
  action [:enable, :start]
end
