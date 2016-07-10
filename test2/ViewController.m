//
//  ViewController.m
//  test2
//
//  Created by admin on 16/7/8.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FirstViewController.h"
#import "DataManager.h"
#import "FiveViewController.h"

@interface ViewController ()<passValueDelegate>
@property (nonatomic, strong) UILabel *textLabel;
@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated
{
//    userDefault
//    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"text"] length]!=0) {
//        self.textLabel.text =[[NSUserDefaults standardUserDefaults] objectForKey:@"text"];
//        [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"text"];
//    }
//    单例
//    self.textLabel.text = [DataManager Default].dataManagerString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.textLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.textLabel.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.textLabel];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(passValueAction:) name:@"passValue" object:nil];
    
    
}
- (IBAction)dataButton:(id)sender {
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    [self presentViewController:firstVC animated:YES completion:nil];
    
    
}
- (IBAction)blockButton:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    secondVC.block = ^(NSString *string){
        self.textLabel.text = string;
    };
        [self presentViewController:secondVC animated:YES completion:nil];
}
- (IBAction)delegateButton:(id)sender {
    ThirdViewController *thirdVc = [[ThirdViewController alloc]init];
    thirdVc.delegate = self;
    [self presentViewController:thirdVc animated:YES completion:nil];
}


-(void)passString:(NSString *)string
{
    self.textLabel.text = string;
}


- (IBAction)notifationButton:(id)sender {
    FourthViewController *fourthVC = [[FourthViewController alloc]init];
    
    [self presentViewController:fourthVC animated:YES completion:nil];
}

-(void)passValueAction:(NSNotification *)noti{
    self.textLabel.text = noti.object;
}
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (IBAction)userdefaultButton:(id)sender {
    FiveViewController *fiveVC = [[FiveViewController alloc]init];
    [self presentViewController:fiveVC animated:YES completion:nil];
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
