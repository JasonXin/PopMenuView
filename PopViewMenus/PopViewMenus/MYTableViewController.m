//
//  MYTableViewController.m
//  PopView
//
//  Created by jason on 15-3-19.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "MYTableViewController.h"

@interface MYTableViewController ()

@end

@implementation MYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.backgroundColor = [UIColor colorWithRed:76/256.0 green:76/256.0 blue:76/256.0 alpha:1.0];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Good－%d",indexPath.row];
    
    return cell;
}


@end
