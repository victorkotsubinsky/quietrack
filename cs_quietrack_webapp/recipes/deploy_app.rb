#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#



include_recipe 'aws'



aws_s3_file "#{node[:quietrack][:webapp][:arch]}" do
  bucket "#{node[:quietrack][:s3][:bucket_name]}"
  remote_path "#{node[:quietrack][:s3][:webapp_path]}"
end

directory "#{node[:quietrack][:webapp][:path]}" do
  recursive true
  action :delete
end

windows_zipfile "#{node[:quietrack][:webapp][:wwwroot]}" do
  source "#{node[:quietrack][:webapp][:arch]}"
  action :unzip
end


aws_s3_file "#{node[:quietrack][:webapp][:webconf_stag]}" do
  bucket "#{node[:quietrack][:s3][:bucket_name]}"
  remote_path "#{node[:quietrack][:s3][:webconf_stag]}"
end
















