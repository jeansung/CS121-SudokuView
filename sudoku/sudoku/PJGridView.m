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
    for (int c = 0; c < 9; c++) {
        for (int r = 0; r < 9; r++) {
            
            CGSize frameSize = self.bounds.size;
            int cellCount = 9;
            
            CGFloat frameSizeFactor = 0.95;
            CGFloat positionFactor = 0.05;
            CGFloat offSet = MIN(frameSize.width, frameSize.height) * (1 - frameSizeFactor) / 2;
            CGFloat x = frameSize.width * frameSizeFactor / cellCount * (r + positionFactor) + offSet;
            CGFloat y = frameSize.height * frameSizeFactor / cellCount * (c + positionFactor) + offSet;
            
            CGFloat sizeFactor = 0.9 / cellCount;
            CGFloat size = MIN(frameSize.width, frameSize.height) * sizeFactor * frameSizeFactor;
            
            CGRect cellFrame = CGRectMake(x, y, size, size);
            PJGridCellView* cellView = [[PJGridCellView alloc] initWithFrame:cellFrame];
            
            [cellView initButtonAtRow:r AndCol:c];
            
            cellView.backgroundColor = [UIColor whiteColor];
            
            [self addSubview:cellView];
            
            
            [_gridCellArray addObject: cellView];
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
