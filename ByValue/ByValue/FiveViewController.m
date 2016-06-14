//
//  FiveViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "FiveViewController.h"
#import "SixViewController.h"
@interface FiveViewController ()<SixViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *DMLabel;

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    SixViewController *six = [[SixViewController alloc]init];
    six.delegate = self;
    [self.navigationController pushViewController:six animated:YES];
}

-(void)changeValue:(NSString *)value
{
    self.DMLabel.text = value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
