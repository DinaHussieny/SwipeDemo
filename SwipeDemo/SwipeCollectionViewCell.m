//
//  SwipeCollectionViewCell.m
//  SwipeDemo
//
//  Created by Dina Hussieny on 5/30/16.
//  Copyright © 2016 Dina Hussieny. All rights reserved.
//

#import "SwipeCollectionViewCell.h"
#import <Masonry/Masonry.h>

@implementation SwipeCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
//        [self.contentView addSubview:self.view];
        
//        [self setNeedsUpdateConstraints];
    }
    
    return self;
}

//- (void)updateConstraints {
//    
//    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.and.leading.equalTo(self.contentView);
//        CGRect screenRect = [[UIScreen mainScreen] bounds];
//        CGFloat screenWidth = screenRect.size.width;
//        CGFloat screenHeight = screenRect.size.height;
//        make.width.equalTo(@(screenWidth));
//        make.height.equalTo(@(screenHeight));
//        
//      
//    }];
//   
//    [super updateConstraints];
//}
//
//- (UIView *)view {
//    if (!_view) {
//        _view = [[UIView alloc]init];
//        _view.backgroundColor = [UIColor whiteColor];
//    }
//    
//    return _view;
//}


@end
