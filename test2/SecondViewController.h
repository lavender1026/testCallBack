//
//  SecondViewController.h
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^passValueBlock)(NSString *blockString);

@interface SecondViewController : UIViewController

@property (nonatomic, copy) passValueBlock block;

@end
