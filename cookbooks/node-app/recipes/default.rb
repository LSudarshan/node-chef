directory node[:node_app][:dir] do
	  owner "root"
	  mode 	"0755"
	  action :create
end

directory node[:node_app][:dir] + node[:node_app][:name] do
	  owner "root"
	  mode 	"0755"
	  action :create
end


template "/etc/init/#{node[:node_app][:name]}.conf" do
	 owner "root"
	 mode  "0644"
	 variables(
		:app_name => node[:node_app][:name],
		:app_location => node[:node_app][:dir] + node[:node_app][:name] + "/"
	 )
	 source	"init.erb"
end

service node[:node_app][:name] do
  supports :restart => true
  action [:enable, :start]
end


