//
//  SecondViewController.m
//  Bmob
//
//  Created by 冯军航 on 16/6/15.
//  Copyright © 2016年 冯军航. All rights reserved.
//

#import "SecondViewController.h"
#import "BmobSDK/Bmob.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)app2:(id)sender {
    //[Bmob registerWithAppKey:@"ba553c4995e9f861f740f1a7d0a4302e"];
    BmobObject *list1 = [BmobObject objectWithClassName:@"List"];
    [list1 setObject:@"LiLei" forKey:@"name"];
    [list1 saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        //
        if (isSuccessful) {
            NSLog(@"List1存入成功");
        }else{
            NSLog(@"..%@", error);
        }
    }];
}
- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
