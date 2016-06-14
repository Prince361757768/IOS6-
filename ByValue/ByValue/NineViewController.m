//
//  NineViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "NineViewController.h"
#import "TenViewController.h"
@interface NineViewController ()

@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@end

@implementation NineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    Singleton *oneSingleton = [Singleton shareData];
    oneSingleton.value = self.DMTextField.text;
    TenViewController *ten = [[TenViewController alloc]init];
    [self.navigationController pushViewController:ten animated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}



@end
