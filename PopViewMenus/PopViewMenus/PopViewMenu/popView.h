//
//  popView.h
//  PopView
//
//  Created by Jason on 15/3/23.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    PopMenuArrowPositionCenter = 0,
    PopMenuArrowPositionLeft = 1,
    PopMenuArrowPositionRight = 2
} PopMenuArrowPosition;

@class popView;

@protocol PopMenuDelegate <NSObject>

@optional
- (void)popMenuDidShow:(popView *)popMenu;

- (void)popMenuDidDismissed:(popView*)popMenu;
@end


@interface popView : UIView

@property (nonatomic, weak) id<PopMenuDelegate> delegate;

@property (nonatomic, assign, getter = isDimBackground) BOOL dimBackground;

@property (nonatomic, assign) PopMenuArrowPosition arrowPosition;


- (instancetype)initWithContentView:(UIView *)contentView;

+ (instancetype)popMenuWithContentView:(UIView *)contentView;


- (instancetype)initWithContentVc:(UIViewController*)contentVc;

+ (instancetype)popMenuWithContentVc:(UIViewController *)contentVc;


- (void)setBackground:(UIImage *)background;


- (void)showInRect:(CGRect)rect;


- (void)dismiss;

@end
