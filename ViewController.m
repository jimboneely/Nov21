//
//  ViewController.m
//  Nov21
//
//  Created by James Neely on 11/21/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import "ViewController.h"
#import "Nov21AppDelegate.h"
#import "View.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 - (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
 {
 self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

- (id) initWithTitle: (NSString *) badge {
	self = [super initWithNibName: nil bundle: nil];
	if (self != nil) {
		// Custom initialization
		self.title = badge;
		self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"Next Badge"
			style: UIBarButtonItemStylePlain
			target: self
			action: @selector(nextBadge)
		];
	}
	return self;
}

- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame controller: self];
}

- (void) viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void) nextBadge {
	UIApplication *application = [UIApplication sharedApplication];
	Nov21AppDelegate *applicationDelegate = application.delegate;
	[applicationDelegate nextBadge];
}

- (void) didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
