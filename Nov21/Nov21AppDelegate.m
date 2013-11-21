//
//  Nov21AppDelegate.m
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "Nov21AppDelegate.h"
#import "ViewController.h"

@implementation Nov21AppDelegate

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
	// Override point for customization after application launch.
	badges = [NSArray arrayWithObjects:
              @"Boulder Badge",
              @"Cascade Badge",
              @"Thunder Badge",
              @"Rainbow Badge",
              @"Soul Badge",
              @"Marsh Badge",
              @"Volcano Badge",
              @"Earth Badge",
              nil
              ];
    
	NSString *badge = [badges objectAtIndex: 0];
	ViewController *firstController = [[ViewController alloc] initWithTitle: badge];
    
    
    pins = [NSArray arrayWithObjects:
            [UIImage imageNamed:@"50px-Boulder_Badge.png"],
            [UIImage imageNamed:@"50px-Cascade_Badge.png"],
            [UIImage imageNamed:@"50px-Thunder_Badge.png"],
            [UIImage imageNamed:@"50px-Rainbow_Badge.png"],
            [UIImage imageNamed:@"50px-Soul_Badge.png"],
            [UIImage imageNamed:@"50px-Marsh_Badge.png"],
            [UIImage imageNamed:@"50px-Volcano_Badge.png"],
            [UIImage imageNamed:@"50px-Earth_Badge.png"],
            nil
            ];
    
	self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	self.window.backgroundColor = [UIColor whiteColor];
    
	self.window.rootViewController =
    [[UINavigationController alloc] initWithRootViewController: firstController];
    
	[self.window makeKeyAndVisible];
	return YES;
}

//Called when user touches a View.

- (void) nextBadge {
	UINavigationController *navigationController =
    (UINavigationController *)self.window.rootViewController;
    
	NSUInteger i = navigationController.viewControllers.count;
	if (i < badges.count) {
		//We haven't reached the last station yet, so we can go farther.
		NSString *title = [badges objectAtIndex: i];
		ViewController *viewController = [[ViewController alloc] initWithTitle: title];
		[navigationController pushViewController: viewController animated: YES];
	}
}

- (void) applicationWillResignActive: (UIApplication *) application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void) applicationWillTerminate: (UIApplication *) application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end