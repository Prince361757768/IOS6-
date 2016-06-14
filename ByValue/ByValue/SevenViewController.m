//
//  SevenViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "SevenViewController.h"
#import "EightViewController.h"
@interface SevenViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DMlabel;

@end

@implementation SevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    
    EightViewController *eight = [[EightViewController alloc]initWithBlock:^(UIColor *color, NSString *name) {
        self.view.backgroundColor = color;
        self.DMlabel.text = name;
    }];
    [self.navigationController pushViewController:eight animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
