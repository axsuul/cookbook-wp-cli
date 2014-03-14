#
# Cookbook Name:: wp-cli
# Recipe:: default
#
# Copyright 2014, James Hu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

executable_path = "#{node['wp-cli']['path']}/#{node['wp-cli']['executable']}"

remote_file executable_path do
  source "https://github.com/wp-cli/wp-cli/releases/download/v#{node['wp-cli']['version']}/wp-cli-#{node['wp-cli']['version']}.phar"
  not_if "test -f #{executable_path}"
  notifies :run, "execute[make-binary-executable]", :immediately
end

execute "make-binary-executable" do
  command "chmod +x #{executable_path}"
  action :nothing
end
