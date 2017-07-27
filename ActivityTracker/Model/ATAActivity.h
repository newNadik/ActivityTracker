//
//  ATAActivity.h
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#ifndef ATAActivity_h
#define ATAActivity_h

#import <Foundation/Foundation.h>

@interface ATAActivity : NSObject
@property (nonatomic, strong) NSString* name;

-(instancetype)init;
-(instancetype)initWithName:(NSString*)name;

-(NSString*)getName;

@end

#endif /* ATAActivity_h */
