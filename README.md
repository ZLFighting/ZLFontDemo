# ZLFontDemo
iOS-使用添加的花样字体

**主要思路:** 
1.将字体库添加到项目中
2.在info.plist中添加所需新字体, 同时也在target-->Build Phases-->Copy Bundle Resources中将info.plist中添加的字体添加上(确保能找到资源)
3.找到真实可用的fontName, 代码中使用`fontWithName: size:`.


思路详情请移步技术文章:[iOS-使用添加的花样字体](http://www.jianshu.com/p/669393809adb)

您的支持是作为程序媛的我最大的动力, 如果觉得对你有帮助请送个Star吧,谢谢啦
