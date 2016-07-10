//
//  FiveViewController.m
//  test2
//
//  Created by admin on 16/7/9.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()
@property (nonatomic, strong) UITextField *fiveField;
@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.fiveField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.fiveField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.fiveField];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[NSUserDefaults standardUserDefaults] setObject:self.fiveField.text forKey:@"text"];
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
