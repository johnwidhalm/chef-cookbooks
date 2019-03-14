#
# Cookbook:: LAMP
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#
# Update the system
# $ sudo yum update
#
execute "update-upgrade" do
  command "sudo yum update -y"
  action :run
end

