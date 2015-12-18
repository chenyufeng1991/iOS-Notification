//
//  ViewController.m
//  demo101
//
//  Created by Zhang KingKa on 12-2-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "inputValue.h"


@interface ViewController()

//使用UITextField返回界面时显示数据；
@property (weak, nonatomic) IBOutlet UITextField *textShowValue;

@end


@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  //在这里注册一个Notification，该Notification的名字为Mynotification，回调方法为displayValue；
  [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(displayValue:) name:@"Mynotification" object:nil];
}

-(void)displayValue:(NSNotification*)value{

  //显示该数据；
  NSString *str=[value object];
  self.textShowValue.text = str;
  NSLog(@"%@",str);

}

//按钮点击跳转
- (IBAction)openBtn:(id)sender {

  //界面跳转；
  inputValue *input = [[inputValue alloc] init];
  [self presentViewController:input animated:true completion:nil];

}
@end
