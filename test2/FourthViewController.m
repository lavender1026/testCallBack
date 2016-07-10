//
//  FourthViewController.m
//  test2
//
//  Created by admin on 16/7/9.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()
@property(nonatomic,strong)UITextField *fourthField;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    self.fourthField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.fourthField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.fourthField];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *string = self.fourthField.text;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"passValue" object:string];
    
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
