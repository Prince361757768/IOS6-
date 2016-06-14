//
//  ThreeViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "ThreeViewController.h"
#import "FouthViewController.h"
@interface ThreeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    
    NSString *code = _DMTextField.text;
    FouthViewController *fouth = [[FouthViewController alloc]initWithValue:code];
    [self.navigationController pushViewController:fouth animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
