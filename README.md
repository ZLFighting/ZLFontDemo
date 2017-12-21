# ZLFontDemo
iOS-使用添加的花样字体

项目需求中, 有时候有些金额利率等这些不用系统默认字体展现, 而需要着重突出展示!

![](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/1.png)

> 主要思路:
1.将字体库添加到项目中
2.在info.plist中添加所需新字体, 同时也在target-->Build Phases-->Copy Bundle Resources中将info.plist中添加的字体添加上(确保能找到资源)
3.找到真实可用的fontName, 代码中使用`fontWithName: size:`.

##Step1. 将字体库添加到项目中
字体库截图如下, 可以根据自己需要的哪些字体添加到项目中.

![](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/2.png)

##Step2. 在info.plist中添加所需新字体.
这里我用一个UniversLTStd-UltraCn.otf文件做测试:

![](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/3.png)

确保能找到资源, 检查下在**target-->Build Phases-->Copy Bundle Resources**中将info.plist中是否添加上所需字体.

![](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/4.png)

##Step3. 找到真实可用的fontName

要先找到fontName 就需要先找到familyName, 而familyName是通过我们字体库的文件去找到: 双击字体库打开，系统会默认使用字体册进行打开。这时候状态栏上面显示的是真实的familyName。如下图所示:

![4C38E171-7851-4ACC-A8C6-AA33526B6192.png](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/5.png)

有了familyName, 则相对应找到fontName就好! 通过上面的循环打印结果，在控制台搜索出相对应的结果即可.
```
/*
* 取出花样字体的fontName
*
* // familyName : Univers LT Std
* // fontName : UniversLTStd-UltraCn
* // 实际中我们使用的应该是fontName，也就是“UniversLTStd-UltraCn”
*/
- (void)testFontName {

for (NSString *familyName in [UIFont familyNames]) {
NSLog(@"familyName：%@", familyName);

for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
NSLog(@"fontName:%@", fontName);
}

NSLog(@"=====");
}
}
```
控制台截图如下:
![](https://github.com/ZLFighting/ZLFontDemo/blob/master/ZLFontDemo/ZLFontDemo/Images/6.png)

项目中在所需位置使用`fontWithName: size:`
```
label.font = [UIFont fontWithName:@"UniversLTStd-UltraCn" size:20];
```






思路详情请移步技术文章:[iOS-使用添加的花样字体](http://blog.csdn.net/smilezhangli/article/details/78548161)

您的支持是作为程序媛的我最大的动力, 如果觉得对你有帮助请送个Star吧,谢谢啦
