- 项目涉及知识点：
	- 自定义UITabbar
	- 代理事件(点击代理方法做出响应)
	- 设置UINavigationController背景图的两种方法
	- +(void)load 方法当程序一启动是就会调用
	- +（void）initialize 方法当前类或者它的子类第一次使用的时候才会调用

```
//当程序一启动就会调用该方法
+(void)load
{
    
}
//当前类或者他的子类第一次使用的时候才会调用
+(void)initialize
{
    // 获取哪个类下面的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
}

//把控制器包装成导航控制器
XCNavigationController *nav = [[XCNavigationController alloc]initWithRootViewController:vc];
//    //设置导航空调背景图片，一定要在导航条显示之前设置
//    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
//    [self addChildViewController:nav];
```

// @property如果在分类里面只会生成get,set方法的声明，并不会生成成员属性

- imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal 显示默认图片不渲染

- 用代码和storyboard结合加载一个页面并且实现跳转

- 自定义button的样式 改成图片的x在0，title的位置在图片x的后面，详情见xctitleView

