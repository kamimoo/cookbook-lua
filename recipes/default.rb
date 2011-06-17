#
# Cookbook Name:: lua
# Recipe:: default
#
# Copyright 2011, kamimoo
#
# All rights reserved - Do Not Redistribute
#
if platform?("debian", "ubuntu")
  %w{ liblua5.1-0-dev lua5.1 }.each do |pkg|
    package pkg do
      action :install
    end
  end
elsif platform?("centos", "redhat", "fedora", "arch")
  %w{ lua lua-devel }.each do |pkg|
    package pkg do
      action :install
    end
  end
end
