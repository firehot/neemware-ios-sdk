//
//  NWTestSecondViewController.m
//  NWSDKTestApp
//
//  Created by Erik Stromlund (neemware) on 8/10/12.
//  Copyright (c) 2012 Neemware, Inc. All rights reserved.
//

#import "NWTestSecondViewController.h"

@interface NWTestSecondViewController ()

@end

@implementation NWTestSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
