#
# Cookbook Name:: thoth
# Recipe:: default
#
# Copyright 2014, Josh Cox
#
#
hostsfile_entry node['ipaddress'] do
    hostname  'ichabod.thalhalla.net'
    comment   'added by thoth recipe'
    retries 3
    retry_delay 15
    action    :append
end

%w{vim curl irssi mutt nmap rsync lynx links2 python-software-properties curl build-essential libxml2-dev libxslt-dev git ruby1.9.1-dev ca-certificates sudo net-tools}.each do |pkg|
  package pkg do
    retries 3
    timeout 1800
    retry_delay 10
    action :install
  end
end
