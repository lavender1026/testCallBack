//
//  ThirdViewController.h
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol passValueDelegate <NSObject>

-(void)passString:(NSString *)string;

@end

@interface ThirdViewController : UIViewController
@property (nonatomic, weak) id<passValueDelegate> delegate;

@end
