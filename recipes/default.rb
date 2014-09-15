#
# Cookbook Name:: iproute2
# Recipe:: default
#
# Copyright 2014, gov, pf.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

puts "iproute2 recipe:"

package 'iproute2' do
 package_name node['iproute2']['package']
 options('--force')
 action :upgrade
end

template '/etc/init.d/iproute2' do
  source 'iproute2.erb'
  mode 0755
  owner 'root'
  group 'root'
  variables(
   :date => Time.now,
   :start => node['iproute2']['start'],
   :stop  => node['iproute2']['stop']
  )
  notifies :restart, 'service[iproute2]', :immediately
end

service 'iproute2' do
  action [ :enable, :restart ]
end

puts "iproute2 ended."
