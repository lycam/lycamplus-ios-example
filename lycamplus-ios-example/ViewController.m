//
//  ViewController.m
//  lycamplus-ios-example
//
//  Created by xman on 15/12/3.
//  Copyright © 2015年 lycam. All rights reserved.
//

#import "ViewController.h"
#import "LycamPlus.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) broadcastButtonPressed:(id)sender {
    
    [LycamPlus presentBroadcasterViewController:self ready:^(NSDictionary *stream) {
        if (stream) {
            NSLog(@"视频流 URL: %@", [stream objectForKey:kLCPStreamURL]);
        }
    } completion:^(BOOL success, NSError* error){
        if (!success) {
            NSLog(@"直播出错: %@", error);
        } else {
            NSLog(@"直播结束");
        }
    }];
}

@end
