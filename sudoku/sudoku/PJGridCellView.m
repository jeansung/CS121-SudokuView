//
//  PJGridCellView.m
//  sudoku
//
//  Created by Jean Sung on 9/11/14.
//  Copyright (c) 2014 Paula Jean. All rights reserved.
//

#import "PJGridCellView.h"

@interface PJGridCellView() {
    UIButton* _button;
    int _row;
    int _col;
}

@end
@implementation PJGridCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) initButtonAtRow:(int) row AndCol: (int) col {
    
    _row = row;
    _col = col;
   // NSLog(@"inside init");
    CGSize cellSize = self.bounds.size;
    CGRect buttonFrame = CGRectMake(0, 0, cellSize.width, cellSize.height);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    [_button setShowsTouchWhenHighlighted:YES];
    [_button setTitle:@"a" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_button];
}

-(void) buttonSelected:(id) sender {
    NSLog(@"someone touched me at:(%d, %d)",_row, _col);
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
