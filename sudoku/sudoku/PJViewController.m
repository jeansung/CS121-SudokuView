//
//  PJViewController.m
//  sudoku
//
//  Created by Jean Sung on 9/11/14.
//  Copyright (c) 2014 Paula Jean. All rights reserved.
//

#import "PJViewController.h"

int initialGrid[9][9] = {
    {7,0,0,4,2,0,0,0,9},
    {0,0,9,5,0,0,0,0,4},
    {0,2,0,6,9,0,5,0,0},
    {6,5,0,0,0,0,4,3,0},
    {0,8,0,0,0,6,0,0,7},
    {0,1,0,0,4,5,6,0,0},
    {0,0,0,8,6,0,0,0,2},
    {3,4,0,9,0,1,0,0,0},
    {8,0,0,3,0,2,7,4,0}
};

@interface PJViewController () {
     UIButton* _button;
}

@end

@implementation PJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // change background color
    self.view.backgroundColor = [UIColor whiteColor];
    
    //creating a button
    CGFloat buttonSize = 50;
    CGRect buttonFrame = CGRectMake(200, 200, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    
    // set highlight when pressed
    [_button setShowsTouchWhenHighlighted:YES];
    
    // setting tag
    [_button setTag:1];
    
    //target for button
    [_button addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:_button];
}


/**
 Method to handle when button is selected
 */
-(void) buttonSelected:(id) sender {
    NSLog(@"Button 1 was presssed.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
