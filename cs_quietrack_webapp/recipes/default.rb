#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#


aws_s3_file "#{node[:quietrack][:webapp][:key]}" do
  bucket "#{node[:quietrack][:s3][:bucket_name]}"
  remote_path "#{node[:quietrack][:s3][:secret_databag]}"
end


config.vm.provision 'chef_client' do |chef|
chef.encrypted_data_bag_secret_key_path="#{node[:quietrack][:webapp][:key]}"
end
 
passwords = Chef::EncryptedDataBagItem.load("prod", "passwords")
pfx_pw = passwords["cert"]
Chef::Log.info("The pfx password is: '#{pfx_pw}'")


