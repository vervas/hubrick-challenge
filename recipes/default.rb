#
# Cookbook Name:: hubrick
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'hubrick'

user 'hubrick' do
  group 'hubrick'
  system true
  shell '/bin/bash'
end

include_recipe 'nginx::default'

directory '/var/www' do
  user 'hubrick'
  group 'www-data'
  mode '0755'
  action :create
end

template '/var/www/index.html' do
    source 'index.html.erb'
end

template "#{node['nginx']['dir']}/sites-available/hello" do
  source 'nginx_site.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end

nginx_site 'default' do
  enable false
end

nginx_site 'hello' do
  enable true
end

service 'nginx' do
  action [:enable, :restart]
end
