#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#

iis_site 'Default Web Site' do
  action [:stop, :delete]
end

iis_pool "#{node[:iis][:appPoolName]}" do
  runtime_version "4.0"
  pipeline_mode :Classic
  action :add
end

iis_site "#node[:iis][:siteName]" do

 protocol :http
 port 80
 path "#{node[:iis][:docRoot]}"
 application_pool "#node[:iis][:appPoolName]"

action [:add,:start]

end


 iis_site "#node[:iis][:siteName]" do
 bindings "#node[:iis][:siteBinds]"
 action [:config,:restart]
 end