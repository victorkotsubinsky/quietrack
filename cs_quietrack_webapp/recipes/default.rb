#
# Cookbook Name:: cs_quietrack_webapp
# Recipe:: default
#
# Copyright 2015, ClearScale
#
# All rights reserved - Do Not Redistribute
#

passwords = Chef::EncryptedDataBagItem.load("prod", "passwords")
mysql = passwords["cert"]
Chef::Log.info("The mysql password is: '#{cert}'")


