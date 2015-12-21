#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#


Chef::Log.info("USER_ID: #{node[:deploy]['web_app'][:environment_variables][:pfx_key]}")


