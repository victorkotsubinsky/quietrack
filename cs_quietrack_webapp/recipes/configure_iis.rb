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

app = search(:aws_opsworks_app,"shortname:web_app").first

windows_certificate "#{node[:iis][:pfx_path]}" do
  pfx_password "#{app['environment']['pfx_key']}"
  store_name 'MY'
  user_store false
end

windows_certificate_binding 'Unbind cert' do
  cert_name "#{node[:iis][:cert_subject]}"
  name_kind :subject  
  address '0.0.0.0'
  action :delete
end

windows_certificate_binding 'Update or set cert for IIS site' do
  cert_name "#{node[:iis][:cert_subject]}"
  name_kind :subject
  address '0.0.0.0'
end


