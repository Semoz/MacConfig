###### My macOS Recover Configuration Script
---

#### Before

- Volumes
  - Macintosh HD
  - MacDrive
    - MacData
      - 1_Configuration(this project)
      - 2_Development
      - 3_File_Data
      - 4_Software
      - 5_Virtual_Machine


#### Intall
```
1. cd /Volumes/MacDrive/MacData
2. git clone https://github.com/Semoz/MacConfig.git 1_Configuration
3. cd 1_Configuration
4 sh ./_Start_Recover
```
##### 说明 Instructions

1. 安装Brew以及oh-my-zsh，Brew是必装的，Brew会帮忙建立运行脚本的基本环境，Xcode Command Line Tools以及/usr/local/bin目录用来存放Function自定义功能。oh-my-zsh的话，看个人喜好。
2. 链接Functions文件夹下的所有组件，比如脚本中共用的一些命令函数。
3. 把接下来要用到的两个目录放置到home主目录底下。
4. 把数据文件全都软链到另外一个分区，包括qq聊天记录，vmware默认保存路径，等等。
5. 链接dotfile
6. 设置macOS的配置，macOS的很多用户习惯是可以用脚本配置的，这样在重装系统后就不需要手动一个个去设置了。
7. 安装Brew软件，有些系统组件是可以用Brew安装的，比如php,gcc编译之类的

##### Others

>因APFS的支持，macOS已经不需要考虑分区影响硬盘的情况，系统分区和数据分区共用一个磁盘，配合脚本之后，几乎不用备份任何数据，直接抹掉磁盘重装，然后脚本一键恢复。

##### For One Key Recovery



---

操作步骤：

1. 创建一个APFS分区`MacDrive`
2. 创建文件目录



创建需要的文件目录
```
mkdir -pv /Volumes/MacDrive/MacData/{1_Configuration,2_Development/{Environment,Project/{GitHub,GitLab},Workspace/{eclipse,vscode}},3_FileData/{AppData,CloudDrive,Downloads,Music,Pictures},4_Software/{Applications/{Apple,Browser,Developer,File,Graphics,SNS,Tools},DMG},5_VirtualMachine/{VMware/{macOS,Windows},Software/Windows}}
```

```
cd /Volumes/MacDrive/MacData
git clone -b master https://github.com/Semoz/MacConfig.git 1_Configuration
```











