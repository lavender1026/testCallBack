//
//  SecondViewController.m
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong) UITextField *secondField;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.secondField = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.secondField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.secondField];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    block传值
    self.block(self.secondField.text);
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
