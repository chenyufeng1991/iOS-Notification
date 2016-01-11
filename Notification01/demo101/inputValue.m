//
//  inputValue.m
//  demo101
//
//  Created by chenyufeng on 15/12/16.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//

#import "inputValue.h"
#import "ViewController.h"

@interface inputValue()

@property (weak, nonatomic) IBOutlet UITextField *textInput;

@end

@implementation inputValue

#pragma mark - View lifecycle

- (void)viewDidLoad{

  [super viewDidLoad];
}

- (IBAction)returnBtn:(id)sender {
  //在这里发送一个通知，Mynotification这里的名字要和前面注册通知的名字吻合。
  [[NSNotificationCenter defaultCenter]postNotificationName:@"Mynotification" object:self.textInput.text];
  [self dismissViewControllerAnimated:true completion:nil];
}

@end
