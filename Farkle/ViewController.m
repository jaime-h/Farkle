//
//  ViewController.m
//  Farkle
//
//  Created by Jaime Hernandez on 3/19/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
#import "DieLabelDelegate.h"


@interface ViewController () <DieLabelDelegate>

@property (strong, nonatomic) IBOutlet DieLabel *diceLabel1;
@property (strong, nonatomic) IBOutlet DieLabel *diceLabel2;
@property (strong, nonatomic) IBOutlet DieLabel *diceLabel3;
@property (strong, nonatomic) IBOutlet DieLabel *diceLabel4;
@property (strong, nonatomic) IBOutlet DieLabel *diceLabel5;
@property (strong, nonatomic) IBOutlet DieLabel *diceLabel6;

@property (strong, nonatomic) NSMutableArray *dice;

@property (strong, nonatomic) IBOutlet UILabel *userScore;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dice = [[NSMutableArray alloc] initWithObjects:self.diceLabel1, self.diceLabel2, self.diceLabel3, self.diceLabel4, self.diceLabel5, self.diceLabel6, nil];
    
    for (DieLabel *label in self.view.subviews)
    {
        if ([label isKindOfClass:[DieLabel class]])
        {
            label.delegate = self;
        }
    }
}
- (IBAction)onRollButtonPressed:(id)sender
{
    for (DieLabel *label in self.dice)
    {
        if ([label isKindOfClass:[DieLabel class]])
        {
            [label roll];
        }
    }
}

-(void)didChooseDie:(UILabel *)dieLabel
{
    [self.dice removeObject:dieLabel];
    
    dieLabel.backgroundColor = [UIColor blueColor];
        
    NSLog(@"Choose Die");
}

@end
