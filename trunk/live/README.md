在CentOS 7上安装SRS（tag=v2.0-r6）需要添加nasm源：  
cd /etc/yum.repos.d/ && wget https://www.nasm.us/nasm.repo  
安装新版本的nasm编译器  
sudo yum install nasm  
  
除此之外，其他依赖还包括  
sudo yum install speex-devel bzip2-devel  
  
通过srs的build.sh脚本编译源代码  
cd trunk && ./scripts/build.sh  
  
当前目录（live）中包含一个简单的html示例，  
通过vide.js播放hls源，并通过socket.io提供聊天。  
  
Node.js 的运行环境可以通过epel源快速安装：  
sudo yum install epel-release  
sudo yum install node.js  
  
初始化 socket.io ：  
git submodule init  
git submodule update  
cd trunk/live && ./initChat.sh  
  
启动 socket.io chat（默认使用3000端口）：  
cd trunk/live && ./chat.sh  
  
启动live test服务（默认使用8080端口）：  
cd trunk && ./live.sh  
  
添加基于token认证的回调：  
推流到rtmp的时候添加参数“publish=test2019081713002130”  
比如：rtmp://192.168.0.240/live/livestream?publish=test2019081713002130  
播放rtmp的时候添加参数“play=test”  
比如：rtmp://192.168.0.240/live/livestream?play=test  
  
添加flv.js播放flv源。   
  
