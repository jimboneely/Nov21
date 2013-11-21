//
//  View.m
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

/*
 - (id) initWithFrame: (CGRect) frame
 {
 self = [super initWithFrame: frame];
 if (self) {
 // Initialization code
 }
 return self;
 }
 */

- (id) initWithFrame: (CGRect) frame controller: (ViewController *__weak) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor =
        [UIColor colorWithRed: (CGFloat)rand() / RAND_MAX
                        green: (CGFloat)rand() / RAND_MAX
                         blue: 1.0
                        alpha: 1.0
         ];
		self.font = [UIFont fontWithName: @"Courier" size: 16];
		self.editable = NO;
		viewController = c;
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	
  
    CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
    
    UIImage *image = [UIImage imageNamed: @"50px-Boulder_Badge.png"];	//100 by 100
	if (image == nil) {
		NSLog(@"could not find the image");
		return;
	}
    
    CGPoint point = CGPointMake(
                                (w - image.size.width) / 2,
                                h - image.size.height - h / 2
                                );
    
	[image drawAtPoint: point];
    
    /*self.text = [[viewController title] stringByAppendingString: @"\n"];
    
	for (UIView *v = self; v != nil; v = v.superview) {
		self.text = [self.text stringByAppendingFormat:
                     @"%@\n"
                     @"frame  (%g, %2g), %g × %g\n"
                     @"bounds (%g, %2g), %g × %g\n",
                     NSStringFromClass(v.class),
                     v.frame.origin.x,  v.frame.origin.y,  v.frame.size.width,  v.frame.size.height,
                     v.bounds.origin.x, v.bounds.origin.y, v.bounds.size.width, v.bounds.size.height
                     ];
	}*/
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	[viewController nextBadge];
}

@end