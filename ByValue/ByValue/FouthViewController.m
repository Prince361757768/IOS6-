//
//  FouthViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "FouthViewController.h"

@interface FouthViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DMLabel;

@end

@implementation FouthViewController

-(id)initWithValue:(NSString *)value
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.firstValue = value;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _DMLabel.text = _firstValue;
}
- (IBAction)btnClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
