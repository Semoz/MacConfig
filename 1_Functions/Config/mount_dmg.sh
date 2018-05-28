#!/usr/bin/expect
set timeout 30
spawn hdiutil attach [lindex $argv 0] -nobrowse
expect ":"
send "q"
expect "Agree Y/N?"
send "Y\r"
interact