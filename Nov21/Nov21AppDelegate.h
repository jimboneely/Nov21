//
//  Nov21AppDelegate.h
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Nov21AppDelegate: UIResponder <UIApplicationDelegate> {
	NSArray *badges;
    NSArray *pins;
}

- (void) nextBadge;

@property (strong, nonatomic) UIWindow *window;
@end
