#!/usr/bin/expect

#-----------------------------------------------------------------------------
# expect script
#  $1 - 端口号 port (e.g. "22")
#  $2 - 用户名 username (e.g. "root")
#  $3 - 服务器地址 server address (e.g. "10.10.10.10")
#  $4 - 登录密码 password (e.g. "password")
#-----------------------------------------------------------------------------

set timeout 30
spawn ssh -p [lindex $argv 0] [lindex $argv 1]@[lindex $argv 2]
expect {
        "(yes/no)?"
        {send "yes\n";exp_continue}
        "password:"
        {send "[lindex $argv 3]\n"}
        "Password:"
        {send "[lindex $argv 3]\n"}
}
interact