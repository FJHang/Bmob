//
//  ViewController.m
//  Bmob
//
//  Created by 冯军航 on 16/6/12.
//  Copyright © 2016年 冯军航. All rights reserved.
//

#import "ViewController.h"
#import "BmobSDK/Bmob.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)app1:(id)sender {
    [Bmob registerWithAppKey:BMOB_APPLICATION_ID];
    //BmobUser *user =
    // Do any additional setup after loading the view, typically from a nib.
    BmobObject *list = [BmobObject objectWithClassName:@"List"];
    [list setObject:@"XiaoMing" forKey:@"name"];
    [list saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        //
        if (isSuccessful) {
            NSLog(@"存入成功");
        }else{
            NSLog(@".%@", error);
            [list saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
                //
                if (isSuccessful) {
                    NSLog(@"存入成功");
                }else{
                    NSLog(@".%@", error);
                }
            }];
        }
    }];
    
}
- (IBAction)button:(id)sender {
    SecondViewController *svc = [[SecondViewController alloc] init];
    [self presentViewController:svc animated:YES completion:^{
    }];
    [Bmob registerWithAppKey:@"ba553c4995e9f861f740f1a7d0a4302e"];
}


@end
