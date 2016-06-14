//
//  EightViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "EightViewController.h"

@interface EightViewController ()
@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@property(nonatomic,copy)finishBlock myBlock;

@end

@implementation EightViewController

-(instancetype)initWithBlock:(finishBlock)block
{
    if (self = [super init]) {
        self.myBlock = block;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)btnClick:(id)sender {
    NSArray *array = [NSArray arrayWithObjects:[UIColor yellowColor],[UIColor cyanColor],[UIColor greenColor],[UIColor brownColor], nil];
    self.myBlock([array objectAtIndex:rand() % 4],_DMTextField.text);
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
