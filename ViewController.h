//
//  ViewController.h
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController: UIViewController {
    NSString *image;
}

- (id) initWithTitle: (NSString *) badge andImage: (NSString *) image;
- (void) nextBadge;
@end
