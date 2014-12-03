#!/bin/bash

service iptables stop
chkconfig iptables off

rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum -y update
yum -y install https://repos.fedorapeople.org/repos/openstack/openstack-icehouse/rdo-release-icehouse-4.noarch.rpm
yum -y install openstack-packstack
packstack --allinone

