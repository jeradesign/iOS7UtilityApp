//
//  FlipsideViewController.h
//  iOS7UtilityApp
//
//  Created by John Brewer on 10/17/13.
//  Jera Design LLC claims no copyright over this stub code.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
