//
//  TPViewController.m
//  The Swimming Pieuvre
//
//  Created by Marius Mezerette on 13/04/2014.
//  Copyright (c) 2014 The Pieuvre. All rights reserved.
//

#import "TPViewController.h"

@interface TPViewController ()

@end

@implementation TPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = self.navigationController.navigationBar.frame;
    
    UIView *twoLineTitleView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(frame), 0, CGRectGetWidth(frame), CGRectGetHeight(frame))];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 8, CGRectGetWidth(frame), 14)];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = self.title;
    titleLabel.textColor = [UIColor colorWithRed:126.0/255.0 green:26.0/255.0 blue:42.0/255.0 alpha:1.0];
    titleLabel.font = [UIFont fontWithName:@"Verdana" size:16.0];
    titleLabel.shadowColor = [UIColor colorWithRed:168.0/255.0 green:158.0/255.0 blue:145.0/255.0 alpha:0.8];
    titleLabel.shadowOffset = CGSizeMake(0, 1);
    [twoLineTitleView addSubview:titleLabel];
    
    UILabel *subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 23, CGRectGetWidth(frame), 14)];
    subTitleLabel.backgroundColor = [UIColor clearColor];
    subTitleLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    subTitleLabel.textAlignment = NSTextAlignmentCenter;
    subTitleLabel.textColor = UIColorFromRGB(0x999999);
    subTitleLabel.font = [UIFont fontWithName:@"Verdana" size:10.0];
    subTitleLabel.text = @"Reading the Internet";
    [twoLineTitleView addSubview:subTitleLabel];
    
    self.navigationItem.titleView = twoLineTitleView;
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
