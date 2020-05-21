#删除所有带@标记的属性
find . -exec xattr -c {} \;
#修改文件权限
chmod -R 775

find . -type d -exec xattr -c {} \;