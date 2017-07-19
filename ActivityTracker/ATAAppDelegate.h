//
//  AppDelegate.h
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ATAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

