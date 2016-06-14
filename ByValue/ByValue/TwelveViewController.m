//
//  TwelveViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "TwelveViewController.h"

@interface TwelveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@property(strong,nonatomic)NSDictionary *dic;
@end

@implementation TwelveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = [NSArray arrayWithObjects:[UIColor greenColor],[UIColor yellowColor],[UIColor cyanColor],[UIColor purpleColor], nil];
    
    _dic = @{@"color":[array objectAtIndex:rand() % 4],
             @"text": self.DMTextField.text};
    //注册通知中心
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    //发送通知
    [center postNotificationName:@"notification" object:@"wangdeming" userInfo:_dic];
}
- (IBAction)btnClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
