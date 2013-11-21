//
//  View.h
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View: UITextView {
	ViewController *__weak viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (ViewController *__weak) c;
@end
