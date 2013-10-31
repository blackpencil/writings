很困了，少写些记录了
建立android开发环境，遇到了些困难。记录如下：
1.集成开发环境因为不能识别openjdk,所以从eclipse开始搭建环境。解决了
2.不知什么缘故，一路默认的建立第一个程序就遇到问题，提示两个错误。
都是说R can not be resolved or ? field.翻遍了谷歌可是还是没有解决。

今天总算是解决问题了。原因及方案如下：
原因：安装环境为ubuntu13.10 64bit，所以谷歌的sdk无法正常运行，所以不能在gen目录下产生R.java,故而出现了上述的两个errors.
解决方案：dpkg --add-architecture i386
sudo apt-get -qqy update
sudo apt-get -qqy install libncurses5:i386 libstdc++6:i386 zlib1g:i386
答案是在stackoverflow.com 上找到。

