//
//  OneViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/23.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
@interface OneViewController ()

@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"One";
    self.view.backgroundColor = [UIColor greenColor];
    
    
}
- (IBAction)valueBtnPress:(id)sender {
    
    TwoViewController *two = [[TwoViewController alloc]init];
    two.firstValue = _DMTextField.text;
    [self.navigationController pushViewController:two animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
