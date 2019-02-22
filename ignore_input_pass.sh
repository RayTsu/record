#!/bin/expect
set timeout 100
set password "123456!$"
set ip [lindex $argv 0]
spawn ssh xl@$ip -o StrictHostKeyChecking=no ls -al /usr/local && ls -al ~/.
expect "xl@$ip's password:"
send "$password\n"
sleep 1
interact
exit
