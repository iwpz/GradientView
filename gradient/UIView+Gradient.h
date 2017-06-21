//
//  UIView+Gradient.h
//  gradient
//
//  Created by 张万平 on 2017/6/21.
//  Copyright © 2017年 iwpz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Gradient)
- (void)setGradientBorderWithRadius:(NSInteger)radius frame:(CGRect)frame width:(CGFloat)width colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo;

- (void)setGradientBorderWithRadius:(NSInteger)radius frame:(CGRect)frame width:(CGFloat)width colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations;

- (void)setGradientBackgroundWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo;

- (void)setGradientBackgroundWithRadius:(NSInteger)radius frame:(CGRect)frame colorOne:(UIColor *)colorOne colorTwo:(UIColor *)colorTwo startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint locations:(NSArray *)locations;
@end
