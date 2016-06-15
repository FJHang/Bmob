//
//  RegisterViewController.m
//  Bmob
//
//  Created by 冯军航 on 16/6/16.
//  Copyright © 2016年 冯军航. All rights reserved.
//

#import "RegisterViewController.h"
#import "BmobSDK/Bmob.h"


@interface RegisterViewController()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

@end
@implementation RegisterViewController
- (IBAction)registerButton:(UIButton *)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    NSString *confirmPassword = self.confirmPasswordTextField.text;
    //判断用户输入内容是否合法
    if (!([username isEqualToString:@""] || [password isEqualToString:@""]) ) {
        if ([password isEqualToString:confirmPassword]) {
            //判断已输入合法的内容,进行注册
            NSLog(@"输入内容合法");
            BmobUser *user = [[BmobUser alloc] init];
            [user setUsername:username];
            [user setPassword:password];
            [user signUpInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
                if (isSuccessful) {
                    NSLog(@"注册成功");
                    //返回登录界面
                    [self.navigationController popViewControllerAnimated:YES];
                }else{
                    NSLog(@"注册失败:%@", error);
                }
            }];
            
        }else{
            NSLog(@"两次输入密码不匹配,请检查输入");
        }
    }else{
        NSLog(@"请完整填写");
    }
    
    
}

@end
