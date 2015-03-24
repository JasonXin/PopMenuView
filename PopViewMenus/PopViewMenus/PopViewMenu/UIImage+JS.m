//
//  UIImage+JS.m
//  PopView
//
//  Created by jason on 15-3-19.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "UIImage+JS.h"

@implementation UIImage (JS)


+ (UIImage*)resizedImageWithName:(NSString *)name
{
    return [self resizedImageWithName:name left:0.5 top:0.5];
}

+ (UIImage*)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top
{
    UIImage *image = [self imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * left topCapHeight:image.size.height * top];
}

@end
