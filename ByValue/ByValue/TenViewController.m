//
//  TenViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "TenViewController.h"
#import "Singleton.h"
@interface TenViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DMLabel;

@end

@implementation TenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.DMLabel.text = [Singleton shareData].value;
}
- (IBAction)btnClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
