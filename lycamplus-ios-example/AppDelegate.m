//
//  AppDelegate.m
//  lycamplus-ios-example
//
//  Created by xman on 15/12/3.
//  Copyright © 2015年 lycam. All rights reserved.
//

#import "AppDelegate.h"
#import "LycamPlus.h"
@interface AppDelegate ()

@end

#define LYCAMPLUS_API_KEY @"TFN6VSE9RK"
#define LYCAMPLUS_API_SECRET @"dt7R3Pn00ARm86KUYqXfJQqJnfWirR"
#define LYCAMPLUS_USERNAME @"trustedTestClient_tester"
#define LYCAMPLUS_PASSWORD @"password"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //初始化SDK，并登录用户
    [LycamPlus initWithAppKey:LYCAMPLUS_API_KEY secret:LYCAMPLUS_API_SECRET withUsername:LYCAMPLUS_USERNAME withPassword:LYCAMPLUS_PASSWORD completion:^(BOOL success, NSError* error){
        if(error)
            NSLog(@"登录错误%@",error);
    }];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
