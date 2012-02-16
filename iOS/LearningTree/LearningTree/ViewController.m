//
//  ViewController.m
//  LearningTree
//
//  Created by jmccarthy on 2/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize wbMain;

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
    NSURL *url = [NSURL URLWithString:@"http://bit.ly/z4EAGx"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    CGRect wbFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    wbMain = [[UIWebView alloc] initWithFrame:wbFrame];
    [wbMain loadRequest:req];
    
    [self.view addSubview:wbMain];
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
    return YES;
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    if (UIInterfaceOrientationIsLandscape(fromInterfaceOrientation)) {
        if (self.view.frame.size.width > 350) {
            wbMain.frame = CGRectMake(0, 0, 768, 1004);
        }
        else {
            wbMain.frame = CGRectMake(0, 0, 320, 460);
        }
    } else {
        if (self.view.frame.size.width > 350) {
            wbMain.frame = CGRectMake(0, 0, 1024, 748);
        }
        else {
            wbMain.frame = CGRectMake(0, 0, 480, 300);
        }
    }
}

@end
