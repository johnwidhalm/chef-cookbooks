#
# Cookbook:: test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# package resource name is 'apache' but centos uses 'httpd'
# in the absense of package_name, it will use the resource
# name
package 'apache' do
  package_name 'httpd'
end

# Default action is 'nothing'
# 
service 'httpd' do
  action [:enable, :start]
end

# default action is to create the file if it
# does not exist.
file '/var/www/index.html' do
  action :delete
end

file '/var/www/html/index.html' do
  content 'Please Work'
  mode '0755'
  owner 'root'
  group 'apache'
end

execute 'command-test' do
  command 'echo blah >> /etc/motd'
  #only_if 'test -r /etc/motd'
  only_if { File.exists?('/etc/motd') } 
end 

# in the absense of a path name, the resource
# name becomes our path name
file '/etc/motd' do
  content 'Welcome to my new MOTD'
end

