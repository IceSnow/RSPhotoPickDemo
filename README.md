# RSPhotoPickDemo
PortraitPicker类的引用Demo

源码中包含`PortraitPicker`、`SVProgressHUD`类


## 注意点

### 1.ProtraitPicker资源文件
从Demo中的`Assets.xcassets`文件里，将`ProtraitPicker`资源文件夹移至你自己的工程`Assets.xcassets`文件里
![image](https://github.com/IceSnow/RSPhotoPickDemo/raw/master/ReadMeRes/20171020133840.png)

### 2.引用检查
拖动`ProtraitPicker`文件夹至工程文件后，检查`targets`-`Build Phases`页面中的
`Compile Sources`、
`Link Binary With Libraries`、
`Copy Bundle Resources`
的引用是否齐全。具体对照下图标记

![image](https://github.com/IceSnow/RSPhotoPickDemo/raw/master/ReadMeRes/20171020133903.png)

## Error

1. build之后，报错以下错误, 请根据[注意点 - 2检查引用](### 2.引用检查)

``` 
*** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '*** -[NSBundle initWithURL:]: nil URL argument'
```



