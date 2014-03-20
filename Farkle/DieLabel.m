//
//  DieLabel.m
//  Farkle
//
//  Created by Jaime Hernandez on 3/19/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (IBAction)labelWasTapped:(UITapGestureRecognizer *)tapGestureRecognizer
{
    [self.delegate didChooseDie:self];
}

-(void)roll
{
    NSInteger rolledNumber = arc4random()%6+1;
    self.text = [NSString stringWithFormat:@"%d",rolledNumber];
}

@end
