//
//  UIView+Gradient.m
//  gradient
//
//  Created by 张万平 on 2017/6/21.
//  Copyright © 2017年 iwpz. All rights reserved.
//

#import "UIView+Gradient.h"

@implementation UIView (Gradient)
- (void)setGradientBorderWithRadius:(NSInteger)radius frame:(CGRect)frame width:(CGFloat)width colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo{
    [self.layer setCornerRadius:radius];
    frame.origin.x = 0;//清空frame的x、y，使结果与视图一致
    frame.origin.y = 0;
    //创建渐变图层
    CAGradientLayer *gradientLayer = [self getGradientWithRadius:radius frame: frame colorOne:colorOne colorTwo:colorTwo];
    
    frame.size.height = frame.size.height - width;
    frame.size.width = frame.size.width - width;
    frame.origin.y = width / 2;//对齐视图到边框中线
    frame.origin.x = width / 2;
    frame.origin.x = width / 2;
    CAShapeLayer *shapeLayer =[[CAShapeLayer alloc] init];
    shapeLayer.lineWidth = width;
    shapeLayer.path = [UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:radius].CGPath;
    shapeLayer.fillColor = nil;
    shapeLayer.strokeColor = [UIColor blackColor].CGColor;
    gradientLayer.mask = shapeLayer;
    [self.layer addSublayer:gradientLayer];
}

- (void)setGradientBorderWithRadius:(NSInteger)radius frame:(CGRect)frame width:(CGFloat)width colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations{
    [self.layer setCornerRadius:radius];
    frame.origin.x = 0;//清空frame的x、y，使结果与视图一致
    frame.origin.y = 0;
    //创建渐变图层
    CAGradientLayer *gradientLayer = [self getGradientWithRadius:radius frame: frame colorOne:colorOne colorTwo:colorTwo startPoint:startPoint endPoint:endPoint locations:locations];
    
    frame.size.height = frame.size.height - width;
    frame.size.width = frame.size.width - width;
    frame.origin.y = width / 2;//对齐视图到边框中线
    frame.origin.x = width / 2;
    frame.origin.x = width / 2;
    CAShapeLayer *shapeLayer =[[CAShapeLayer alloc] init];
    shapeLayer.lineWidth = width;
    shapeLayer.path = [UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:radius].CGPath;
    shapeLayer.fillColor = nil;
    shapeLayer.strokeColor = [UIColor blackColor].CGColor;
    gradientLayer.mask = shapeLayer;
    [self.layer addSublayer:gradientLayer];
}

- (void)setGradientBackgroundWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo{
    frame.origin.x = 0;
    frame.origin.y = 0;
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    [gradientLayer setCornerRadius:radius];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    gradientLayer.colors = colors;
    gradientLayer.locations = @[@(0.0f), @(1.0f)];
    [self.layer addSublayer:gradientLayer];
}

- (void)setGradientBackgroundWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations{
    frame.origin.x = 0;
    frame.origin.y = 0;
    CAGradientLayer *gradientLayer = [self getGradientWithRadius:radius frame:frame colorOne:colorOne colorTwo:colorTwo startPoint:startPoint endPoint:endPoint locations:locations];
    [self.layer addSublayer:gradientLayer];
}

- (CAGradientLayer *)getGradientWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo{
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    [gradientLayer setCornerRadius:radius];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    gradientLayer.colors = colors;
    gradientLayer.locations = @[@(0.0f), @(1.0f)];
    return gradientLayer;
}

- (CAGradientLayer *)getGradientWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations{
    CAGradientLayer *gradientLayer = [self getGradientWithRadius:radius frame:frame colorOne:colorOne colorTwo:colorTwo];
    [gradientLayer setStartPoint:startPoint];
    [gradientLayer setEndPoint:endPoint];
    [gradientLayer setLocations:locations];
    return gradientLayer;
}
@end
