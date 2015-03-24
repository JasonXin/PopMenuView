//
//  UIImage+JS.h
//  PopView
//
//  Created by jason on 15-3-19.
//  Copyright (c) 2015年 jason. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIImage (JS)

+(UIImage*)resizedImageWithName:(NSString*)name;

+ (UIImage*)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;

@end
