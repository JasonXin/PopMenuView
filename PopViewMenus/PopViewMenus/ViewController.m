//
//  ViewController.m
//  PopView
//
//  Created by jason on 15-3-19.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "ViewController.h"
#import "popView.h"
#import "MYTableViewController.h"

@interface ViewController ()<PopMenuDelegate>

@property (nonatomic,strong) MYTableViewController *myVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"View" style:UIBarButtonItemStyleDone target:self action:@selector(View)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"VC" style:UIBarButtonItemStyleDone target:self action:@selector(VC)];
    
    UIButton *centerBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0,32,32)];
    
    [centerBtn setImage:[UIImage imageNamed:@"down"] forState:UIControlStateNormal];
    [centerBtn setImage:[UIImage imageNamed:@"up"] forState:UIControlStateSelected];
    
    [centerBtn addTarget:self action:@selector(center:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = centerBtn;
    
    
}

- (void)center:(UIButton*)centerBtn
{
    
    UITableView *table = [[UITableView alloc] init];
    popView *menu = [popView popMenuWithContentView:table];
    menu.delegate = self;
    CGFloat menuW = 200;
    CGFloat menuH = 300;
    CGFloat menuY = 55;
    CGFloat menuX = 87;
    menu.dimBackground = NO;
    menu.arrowPosition = PopMenuArrowPositionCenter;
    [menu showInRect:CGRectMake(menuX, menuY, menuW, menuH)];
    
}



- (void)View
{
    UITableView *table = [[UITableView alloc] init];
    popView *menu = [popView popMenuWithContentView:table];
    CGFloat menuW = 100;
    CGFloat menuH = 400;
    CGFloat menuY = 55;
    CGFloat menuX = self.view.frame.size.width - menuW;
    menu.dimBackground = YES;
    menu.arrowPosition = PopMenuArrowPositionRight;
    [menu showInRect:CGRectMake(menuX, menuY, menuW, menuH)];
    
}


- (void)VC
{
    _myVC = [[MYTableViewController alloc] init];
    popView *menu = [popView popMenuWithContentVc:_myVC];
    CGFloat menuW = 300;
    CGFloat menuH = 400;
    CGFloat menuY = 55;
    CGFloat menuX = 0;
    menu.dimBackground = NO;
    menu.arrowPosition = PopMenuArrowPositionLeft;
    [menu showInRect:CGRectMake(menuX, menuY, menuW, menuH)];
    
}

- (void)popMenuDidShow:(popView *)popMenu
{
    UIButton *btn = (UIButton*)self.navigationItem.titleView;
    btn.selected = YES;
}

- (void)popMenuDidDismissed:(popView *)popMenu
{
    UIButton *btn = (UIButton*)self.navigationItem.titleView;
    btn.selected = NO;
}
@end
