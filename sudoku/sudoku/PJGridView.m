//
//  PJGridView.m
//  sudoku
//
//  Created by Jean Sung on 9/11/14.
//  Copyright (c) 2014 Paula Jean. All rights reserved.
//

#import "PJGridView.h"



@interface PJGridView () {
    NSMutableArray* _gridCellArray;
}

@end

@implementation PJGridView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawGrid
{
    _gridCellArray = [[NSMutableArray alloc] init];
    for (int r = 0; r < 9; r++) {
        for (int c = 0; c < 9; c++) {
            
            CGSize frameSize = self.bounds.size;
            int cellCount = 9;
            
            CGFloat positionFactor = 1.05 / cellCount;
            CGFloat x = frameSize.width * positionFactor * r;
            CGFloat y = frameSize.height * positionFactor * c;
            
            CGFloat sizeFactor = 0.9 / cellCount;
            CGFloat size = MIN(frameSize.width, frameSize.height) * sizeFactor;
            
            CGRect cellFrame = CGRectMake(x, y, size, size);
            PJGridCellView* cellView = [[PJGridCellView alloc] initWithFrame:cellFrame];
            cellView.backgroundColor = [UIColor whiteColor];
            [self addSubview:cellView];
            [self bringSubviewToFront:cellView];
            
            NSLog(@"aahhhh");
            
            //[_gridCellArray addObject:];
        }
    }
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
