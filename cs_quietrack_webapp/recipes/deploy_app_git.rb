#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: deploy_app_git
#
# Copyright 2016, ClearScale
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'aws'

# Delete old wwwroot folder
directory "#{node[:quietrack][:webapp][:path]}" do
  recursive true
  action :delete
end

# Fetch code from github to temporary folder
git '#{node[:quietrack][:webapp][:path]}' do
  repository 'https://github.com/qzr2fr/RighTrack.git'
  revision "#{app['environment']['branch']}"
  action :sync
end
