# MarkdownViewDemo
你是否想过想使用 TextView 一样加载 Markdown 文档，让我们用 Swift 来实现它

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/download-3.0MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

Markdown 作为 Blog 圈风生水起的主，自有它的强大之处，有没有考虑用它来展示一些内容？

| 名称 |1.列表页 |2.Markdown页 |3.Markdown页 |
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-18/41003209.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-18/33125348.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-18/14387742.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | Markdown 语法 | 网络图片加载 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.同时支持 Markdown 语法和网络图片加载
* 4.具备较高自定义性

## Installation 安装
### 1.手动安装:
`下载Demo后,将功能文件夹拖入到项目中, 导入头文件后开始使用。`
### 2.CocoaPods安装:
修改“Podfile”文件
```
pod 'MarkdownView'
```
控制台执行 Pods 安装命令 （ 简化安装：pod install --no-repo-update ）
```
pod install
```
> 如果 pod search 发现不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存，重新搜索就OK了


## Requirements 要求
* iOS 7+
* Xcode 8+
* Swift 4.0


## Usage 使用方法
### 第一步 引入头文件
```
import MarkdownView
```
### 第二步 简单调用
纯代码版，XIB版类似，只是不需要用代码创建和布局
```
let mdView = MarkdownView()
view.addSubview(mdView)
mdView.frame = CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height)
// 加载本地 sample.md 文件
let path = Bundle.main.path(forResource: "sample", ofType: "md")!
let url = URL(fileURLWithPath: path)
let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
mdView.load(markdown: markdown, enableImage: true)
```

## Update 更新
### 加载完成 回调方法
由于 Markdown 加载通过 WKWebView 实现，加载需要耗时，所以使用代理方法传出 加载完成状态
协议(别忘记指派哦)：
```swift
MarkdownViewDelegate
```
协议方法:
```swift
func MarkdownFinishedLoading() {
     print("FinishedLoading")
}
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
MarkdownViewDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io

