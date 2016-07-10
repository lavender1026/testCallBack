//
//  ThirdViewController.m
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (nonatomic, strong) UITextField *thirdField;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor cyanColor];
    self.thirdField = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.thirdField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.thirdField];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.delegate passString:self.thirdField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
