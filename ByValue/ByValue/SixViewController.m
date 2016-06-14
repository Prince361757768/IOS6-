//
//  SixViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController ()
@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@end

@implementation SixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    
    // 发送代理，并把文本框中的值传过去
    [self.delegate changeValue:self.DMTextField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
