#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#

include_recipe "aws"

iis_site 'Default Web Site' do
  action [:stop, :delete]
end

iis_pool "#{node[:iis][:appPoolName]}" do
  runtime_version "4.0"
  pipeline_mode :Classic
  action :add
end

iis_site "#{node[:iis][:siteName]}" do

 path "#{node[:iis][:docRoot]}"
 application_pool "#{node[:iis][:appPoolName]}"

action [:add,:start]

end


 iis_site "#{node[:iis][:siteName]}" do
 bindings "#{node[:iis][:siteBinds]}"
 action [:config,:restart]
 end

aws_s3_file "#{node[:iis][:pfx_path]}" do
  bucket "#{node[:quietrack][:s3][:bucket_name]}"
  remote_path "#{node[:quietrack][:s3][:ssl_cert_path]}"
end

windows_certificate "#{node[:iis][:pfx_path]}" do
  pfx_password decrypted['#{node[:iis][:pfx_pwd]}']
  store_name 'MY'
  user_store false
end




