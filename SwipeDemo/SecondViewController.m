//
//  SecondViewController.m
//  SwipeDemo
//
//  Created by Dina Hussieny on 5/30/16.
//  Copyright © 2016 Dina Hussieny. All rights reserved.
//

#import "SecondViewController.h"
#import <Masonry/Masonry.h>

@interface SecondViewController ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = @"Second";
    self.titleLabel.textColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.titleLabel];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).with.offset(100);
        make.width.equalTo(@(120));
        make.top.equalTo(self.view).with.offset(100);
        make.height.equalTo(@(100));
    }];
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
    }
    
    return  _titleLabel;
}

@end
