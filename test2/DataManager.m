//
//  DataManager.m
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "DataManager.h"

static DataManager *manager = nil;

@implementation DataManager

+(instancetype)Default
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        manager = [[DataManager alloc]init];
    });
    return manager;
}

@end
