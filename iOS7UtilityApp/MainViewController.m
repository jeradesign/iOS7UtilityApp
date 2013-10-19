//
//  MainViewController.m
//  iOS7UtilityApp
//
//  Created by John Brewer on 10/17/13.
//  Copyright (c) 2013 Jera Design LLC. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        UINavigationController *navigationController = [segue destinationViewController];
        FlipsideViewController *flipsideViewController = (FlipsideViewController*)[navigationController topViewController];
        [flipsideViewController setDelegate:self];
    }
}

@end
