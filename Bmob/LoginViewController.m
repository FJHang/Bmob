//
//  LoginViewController.m
//  Bmob
//
//  Created by 冯军航 on 16/6/16.
//  Copyright © 2016年 冯军航. All rights reserved.
//

#import "LoginViewController.h"
#import "BmobSDK/Bmob.h"
@interface LoginViewController()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end
@implementation LoginViewController
- (IBAction)loginButton:(UIButton *)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    if ([username isEqualToString:@""] || [password isEqualToString:@""]) {
        //判断用户是否输入用户名和密码
        NSLog(@"请输入用户名或密码");
    }else{
        [BmobUser loginWithUsernameInBackground:username password:password block:^(BmobUser *user, NSError *error) {
            if (user) {
                NSLog(@"登录成功");
                [self performSegueWithIdentifier:@"loginShow" sender:nil];
            }else{
                NSLog(@"登录失败:%@", error);
            }
        }];
        
    }
    
}
- (IBAction)registerButton:(UIButton *)sender {
    [self performSegueWithIdentifier:@"registerShow" sender:nil];
}

@end
