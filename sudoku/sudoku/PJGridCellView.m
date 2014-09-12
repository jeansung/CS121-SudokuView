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
    int _value;
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
-(void) initButtonAtRow:(int) row AndCol: (int) col{
    
    _row = row;
    _col = col;
   // NSLog(@"inside init");
    CGSize cellSize = self.bounds.size;
    CGRect buttonFrame = CGRectMake(0, 0, cellSize.width, cellSize.height);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    [_button setShowsTouchWhenHighlighted:YES];
    [_button addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_button];
}

-(void) setCellValue: (int) value {
    _value = value;
    [_button setTitle:[NSString stringWithFormat:@"%d",_value] forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];

}

-(void) buttonSelected:(id) sender {
    NSLog(@"(%d, %d) = %d",_row, _col, _value);
    
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
