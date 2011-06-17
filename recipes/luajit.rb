#
# Cookbook Name:: lua
# Recipe:: luajit
#
# Copyright 2011, kamimoo
#
# All rights reserved - Do Not Redistribute
#
if platform?("debian", "ubuntu")
  %w{ luajit libluajit-5.1-dev }.each do |pkg|
    package pkg do
      action :install
    end
  end
end

