//
//  ATAMainViewControllerTests.m
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#import <XCTest/XCTest.h>
#import "ATAMainViewController.h"
@interface ATAMainViewControllerTests : XCTestCase

@end

@implementation ATAMainViewControllerTests{
    ATAMainViewController *viewController;
}

- (void)setUp {
    [super setUp];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    viewController = [storyboard instantiateViewControllerWithIdentifier: @"ATAMainViewController"];
    [viewController view];
}

-(void)testMainViewControllerViewExists {
    XCTAssertNotNil([viewController view], @"MainViewController should contain a view");
}

-(void)testActivitiesTableConnected {
    XCTAssertNotNil([viewController activitiesTable], @"MainViewController should contain a table");
}

-(void)testAddButtonConnected {
    XCTAssertNotNil([viewController addButton], @"MainViewController should contain addButton");
}

-(void)testAddButtonCheckIBAction {
    
    NSArray *actions = [viewController.addButton actionsForTarget:viewController
                                                  forControlEvent:UIControlEventTouchUpInside];
    XCTAssertTrue([actions containsObject:@"addActivity:"], @"addButton should have IBAction");
}

- (void)tearDown {
    viewController = nil;
    [super tearDown];
}



@end
