//
//  ATAActivity.m
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#import "ATAActivity.h"

@implementation ATAActivity

-(instancetype)init{
    return [self initWithName:@"Activity"];
}

-(instancetype)initWithName:(NSString*)name{
    if ((self = [super init])) { self.name = name; }
    return self;
}

-(NSString*)getName{ return self.name; }

@end
