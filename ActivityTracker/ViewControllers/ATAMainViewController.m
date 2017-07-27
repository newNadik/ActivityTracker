//
//  ATAMainViewController.m
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#import "ATAMainViewController.h"
#import "ATAAppDelegate.h"
#import "ATAAddActivityView.h"

@interface ATAMainViewController ()

@end

@implementation ATAMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)addActivity:(id)sender{
    
    UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Add Activity?"
                                                                       message:@""
                                                                preferredStyle:UIAlertControllerStyleAlert];
    [alertView addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                                  style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction *action){
                                                    [self dismissViewControllerAnimated:YES completion:nil]; }]];
    
    [alertView addAction:[UIAlertAction actionWithTitle:@"Add"
                                                  style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction *action){
                                                }]];
    [self showDetailViewController:alertView sender:self];
   
//    ATAAddActivityView *addActivityView = [[ATAAddActivityView alloc] initWithFrame:self.view.bounds];
//    [[self view] addSubview: addActivityView];
}

@end
