#
# Cookbook:: atom
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#


#bash 'downloadez atom' do
#  code <<-AAA  
#    wget https://atom.io/download/rpm -O /tmp/atom.rpm
#  AAA
#  not_if "ls -l /tmp/atom.rpm"
#end

remote_file '/tmp/atom.rpm' do
  source 'https://atom.io/download/rpm'
#  path '/tmp/atom.rpm'
end

#bash 'instalez atom' do
#  code <<-AAA
#    yum install /tmp/atom.rpm
#  AAA
#end

package '/tmp/atom.rpm'
