//
//  ViewController.m
//  ShareKitTest
//
//  Created by Raul Uranga on 3/5/12.
//  Copyright (c) 2012 GrupoW. All rights reserved.
//

#import "ViewController.h"
#import "SHK.h"
#import "SHKItem.h"
#import "SHKActionSheet.h"

@implementation ViewController

@synthesize myImageView;
@synthesize myToolBar;

-(void) dealloc {
    [myImageView release];
    [myToolBar release];
    [super dealloc];
}

- (IBAction)share:(UIBarButtonItem*)sender 
{
    NSLog(@"Share Tap!");
    SHKItem *item = [SHKItem image:myImageView.image title:@"Apple Retro"];
    SHKActionSheet *actionSheet = [SHKActionSheet actionSheetForItem:item];
    [actionSheet showFromToolbar:myToolBar];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
