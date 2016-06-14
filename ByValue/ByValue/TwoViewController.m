//
//  TwoViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/23.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DMTextField;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _DMTextField.text = _firstValue;
}
- (IBAction)btnPress:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
