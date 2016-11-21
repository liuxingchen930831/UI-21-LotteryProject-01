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

- UIButton的图片拉伸只能用纯代码写，只有UIImAageView可以在storyBoard中实现

- 当我们接手一个项目时候，最好把要写的项目功能类似的写在一个自定义得出类里，这样以便于以后产品经理提出产品修改，可以节省大量的重复工作。比如写一个存储类，我们可以直接用系统的NSUserDefaults，但是如果产品经理说咱们用数据区sqlite吧..那你这东西不是白写了，最好是定义一个类，比如我们可以把数据存储都放在这个类里，就算现在用NSUserDefaults，明天换SQLite，那也是继承我们自己写的类，比较方便。（详情请款Tools工具类）

- 自定义两种方式导航控制的left按钮 1.第一种自定义uibarbuttonitem但是此方法会让导航控制侧滑失效，需要把导航控制器的手势代理设置为nil。2.第二种设置bar的颜色，然后把字的位置放在负数的位置

