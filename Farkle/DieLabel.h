//
//  DieLabel.h
//  Farkle
//
//  Created by Jaime Hernandez on 3/19/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"

@interface DieLabel : UILabel

@property (strong, nonatomic) id<DieLabelDelegate> delegate;

-(void)roll;

@end

