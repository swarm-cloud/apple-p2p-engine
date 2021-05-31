//
//  AppDelegate.m
//  iOS Demo
//
//  Created by Timmy on 2021/5/5.
//  Copyright © 2021 cdnbye. All rights reserved.
//

#import "AppDelegate.h"
#import "SwarmCloudSDK.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window.frame = [UIScreen mainScreen].bounds;
    
    SWCP2pConfig *config = [SWCP2pConfig defaultConfiguration];
    config.logLevel =  SWCLogLevelDebug;
//    config.isSharePlaylist = YES;
//    config.announce = @"http://tracker.p2pengine.net:7066/v1";
//    config.trickleICE = NO;
//    config.p2pEnabled = NO;
//    config.channelIdPrefix = @"abffff";
    [[SWCP2pEngine sharedInstance] startWithToken:@"ZMuO5qHZg" andP2pConfig:config];
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
//    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:nil];
}



@end
