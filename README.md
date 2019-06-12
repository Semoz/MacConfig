###我的macOS快速恢复配置脚本
###My macOS Recover Configuration Script
---

因为用了十几年的Windwos操作系统，最近这几年一直在用macOS，总是有点不习惯。
虽然macOS不像Windows一样动不动就崩溃、蓝屏，没事就要重装几次，macOS正常使用可以几年不用重装系统。
但是对于搞技术的人来说，折腾是必然的，特别是遇到了Linux类的操作系统
最早一版是从网上看了dotfile，自己也模仿做了一个，可以实现dotfile的管理，相当于配置管理，这样重装系统后就不需要再去一个个配置了，非常方便。
有一次10.13系统更新失败，导致无法重启。这个让我下决心一定要把macOS也弄的和Windows一样，实现数据存在另一个分区，系统分区可以随意重装。

####准备 Before

macOS 10.13 增加了APFS支持，简直就是神助攻！

- Volumes
  - Macintosh HD
  - MacDrive
    - MacData
      - ##1_Configuration
      - 2_Development
      - 3_File_Data
      - 4_Software
      - 5_Virtual_Machine


####安装 Intall
```
1. cd /Volumes/MacDrive/MacData
2. git clone https://github.com/Semoz/MacConfig.git 1_Configuration
3. cd 1_Configuration
4 sh ./_Start_Recover
```
####说明 Instructions
1. 安装Brew以及oh-my-zsh，Brew是必装的，Brew会帮忙建立运行脚本的基本环境，Xcode Command Line Tools以及/usr/local/bin目录用来存放Function自定义功能。oh-my-zsh的话，看个人喜好。
2. 链接Functions文件夹下的所有组件，比如脚本中共用的一些命令函数。
3. 把接下来要用到的两个目录放置到home主目录底下。
4. 把数据文件全都软链到另外一个分区，包括qq聊天记录，vmware默认保存路径，等等。
5. 链接dotfile
6. 设置macOS的配置，macOS的很多用户习惯是可以用脚本配置的，这样在重装系统后就不需要手动一个个去设置了。
7. 安装Brew软件，有些系统组件是可以用Brew安装的，比如php,gcc编译之类的

####其他 Others
>APFS简直就是神器啊！！macOS当初考虑要不要分区，就是担心分区后，不够用的情况下要移动数据，有了APFS之后简直不要太爽，系统分区和数据分区共用一个磁盘，配合脚本之后，几乎不用备份任何数据，直接抹掉磁盘重装，然后脚本一键恢复。

######真正实现了 One Key Recovery