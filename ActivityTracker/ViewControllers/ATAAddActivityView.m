//
//  ATAAddActivityView.m
//  ActivityTracker
//
//  Created by Pro on 7/19/17.
//
//

#import "ATAAddActivityView.h"

@implementation ATAAddActivityView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [[NSBundle mainBundle] loadNibNamed:@"ATAAddActivityView"
                                      owner:self options:nil];
        [self addSubview:self.contentView];
        [self.contentView setFrame:self.bounds];
    }
    return self;
}

-(IBAction)cancelButtonAction:(id)sender{
    [UIView animateWithDuration:0.3f animations:^{
        [self.contentView setAlpha:0.0f];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

@end
