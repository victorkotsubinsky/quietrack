#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#



include_recipe 'aws'



aws_s3_file "#{node[:quietrack][:webapp][:wwwroot]}" do
  bucket "#{node[:quietrack][:s3][:bucket_name]}"
  remote_path "#{node[:quietrack][:s3][:webapp_path]}"
end

windows_zipfile "#{node[:quietrack][:webapp][:wwwroot]}" do
  source "#{node[:quietrack][:webapp][:wwwroot]}\/QuieTrack.zip"
  action :unzip
end



















