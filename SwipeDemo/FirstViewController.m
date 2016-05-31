//
//  FirstViewController.m
//  SwipeDemo
//
//  Created by Dina Hussieny on 5/30/16.
//  Copyright © 2016 Dina Hussieny. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import <Masonry/Masonry.h>

@interface FirstViewController () {
    FirstViewController *firstViewControoler;
    SecondViewController *secondViewController;
    ThirdViewController *thirdViewController;
    
    
}

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = @"First";
    self.titleLabel.textColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.titleLabel];
    
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    firstViewControoler = [[FirstViewController alloc]init];
    secondViewController = [[SecondViewController alloc]init];
    thirdViewController = [[ThirdViewController alloc]init];
    
    
    
    NSArray *viewControllers = [NSArray arrayWithObject: secondViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
    
    
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

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    
    
    return secondViewController;
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    
    
    
    return thirdViewController;
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

@end
