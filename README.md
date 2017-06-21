# GradientView
An easy way to add gradient background and/or border to UIView

![](https://github.com/iwpz/GradientView/blob/master/img.png)

## how to use
* first
```objc
#import "UIView+Gradient.h"
```
* then

```objc
UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    [view1 setGradientBackgroundWithRadius:4 frame:view1.frame colorOne:[UIColor redColor] colorTwo:[UIColor greenColor]];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 110, 200, 50)];
    [view2 setBackgroundColor:[UIColor lightGrayColor]];
    [view2 setGradientBorderWithRadius:4 frame:view2.frame width:2 colorOne:[UIColor blueColor] colorTwo:[UIColor orangeColor]];
    [self.view addSubview:view2];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(50, 170, 200, 50)];
    [view3 setGradientBackgroundWithRadius:4 frame:view1.frame colorOne:[UIColor redColor] colorTwo:[UIColor greenColor]];
    [view3 setGradientBorderWithRadius:4 frame:view2.frame width:2 colorOne:[UIColor blueColor] colorTwo:[UIColor orangeColor]];
    [self.view addSubview:view3];
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(50, 230, 200, 50)];
    [view4 setGradientBackgroundWithRadius:4 frame:view1.frame colorOne:[UIColor redColor] colorTwo:[UIColor greenColor] startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 1) locations:@[@(0.3f), @(1.0f)]];
    [self.view addSubview:view4];
    
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(50, 290, 200, 50)];
    [view5 setBackgroundColor:[UIColor lightGrayColor]];
    [view5 setGradientBorderWithRadius:4 frame:view2.frame width:2 colorOne:[UIColor orangeColor] colorTwo:[UIColor blueColor] startPoint:CGPointMake(1, 1) endPoint:CGPointMake(0, 0) locations:@[@(0.0f),@(1.0f)]];
    [self.view addSubview:view5];
    
    UIView *view6 = [[UIView alloc] initWithFrame:CGRectMake(50, 350, 200, 50)];
    [view6 setGradientBackgroundWithRadius:4 frame:view1.frame colorOne:[UIColor redColor] colorTwo:[UIColor greenColor] startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 1) locations:@[@(0.3f), @(1.0f)]];
    [view6 setGradientBorderWithRadius:4 frame:view2.frame width:2 colorOne:[UIColor orangeColor] colorTwo:[UIColor blueColor] startPoint:CGPointMake(1, 1) endPoint:CGPointMake(0, 0) locations:@[@(0.5f),@(1.0f)]];
    [self.view addSubview:view6];
```
