#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# OHAI Attribute
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache"
end

# install apache package
package 'apache2' do   		# resource name
	#package_name 'httpd' 	# package names
	package_name package 	# package names
	action :install  	# default actuon is install
end

service 'apache2' do
	#service_name 'httpd'
	service_name package 
	action [:start, :enable ]
end

# include_recipe 'apache::website'

