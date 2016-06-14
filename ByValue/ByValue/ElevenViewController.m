//
//  ElevenViewController.m
//  ByValue
//
//  Created by SDC201 on 16/5/24.
//  Copyright © 2016年 PCEBG. All rights reserved.
//

#import "ElevenViewController.h"
#import "TwelveViewController.h"
@interface ElevenViewController ()
@property (weak, nonatomic) IBOutlet UITextField *DMTextField;

@end

@implementation ElevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)btnClick:(id)sender {
    
    TwelveViewController *twelve = [[TwelveViewController alloc]init];
    [self.navigationController pushViewController:twelve animated:YES];
    //注册接收通知中心
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    //接收通知
    [center addObserver:self selector:@selector(receiveNotification:) name:@"notification" object:nil];
}
-(void)receiveNotification:(NSNotification *)notification
{
    self.view.backgroundColor = [notification.userInfo valueForKey:@"color"];
    self.DMTextField.text = [notification.userInfo valueForKey:@"text"];
    NSLog(@"%@",notification.object);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)dealloc
{
    //移除通知中心
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
}

@end
