//
//  main.m
//  Bmob
//
//  Created by 冯军航 on 16/6/12.
//  Copyright © 2016年 冯军航. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BmobSDK/Bmob.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        [Bmob registerWithAppKey:BMOB_APPLICATION_KEY];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
