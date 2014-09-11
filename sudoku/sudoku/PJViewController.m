//
//  PJViewController.m
//  sudoku
//
//  Created by Jean Sung on 9/11/14.
//  Copyright (c) 2014 Paula Jean. All rights reserved.
//

#import "PJViewController.h"

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
