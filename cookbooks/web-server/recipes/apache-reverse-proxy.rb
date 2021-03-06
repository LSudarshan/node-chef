include_recipe "apache2::mod_proxy"
include_recipe "apache2::mod_proxy_http"

template "#{node[:apache][:dir]}/mods-available/proxy.conf"  do
  owner "root"
  group node[:apache][:root_group]
  mode 0644
  source "apache-proxy.erb"
  variables(
	:proxy_passes => node[:apache][:proxy_passes]
  )
  notifies :restart, resources(:service => "apache2")
end