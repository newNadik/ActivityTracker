//
//  ActivityTrackerTests.m
//  ActivityTrackerTests
//
//  Created by Pro on 7/19/17.
//
//

#import <XCTest/XCTest.h>
#import "ATAActivity.h"

@interface ActivityTrackerTests : XCTestCase

@end

@implementation ActivityTrackerTests{
    ATAActivity *activity;
}

- (void)setUp {
    [super setUp];
}

- (void)testActivityClassExists {
    activity = [[ATAActivity alloc]init];
    XCTAssertNotNil(activity, @"ATAActivity class exists");
}

- (void)testActivityClassHasDefaultName {
    activity = [[ATAActivity alloc]init];
    XCTAssertEqualObjects([activity getName], @"Activity", @"ATAActivity has default name = Activity");
}

- (void)testActivityInitWithName {
    activity = [[ATAActivity alloc]initWithName:@"Name"];
    XCTAssertNotNil(activity, @"ATAActivity class exists");
    XCTAssertNotNil([activity getName], @"ATAActivity class has property name");
    XCTAssertEqualObjects([activity getName], @"Name", @"ATAActivity class has property name = Name");
}

- (void)tearDown {
    activity = nil;
    [super tearDown];
}



@end
