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
            
            CGFloat frameSizeFactor = 0.95;
            CGFloat positionFactor = 0.05;
            CGFloat xOffSet = frameSize.width * (1 - frameSizeFactor) / 6 * ((int) c/3 + 2);
            CGFloat yOffSet = frameSize.width * (1 - frameSizeFactor) / 6 * ((int) r/3 + 2);
            CGFloat x = frameSize.width * frameSizeFactor / cellCount * (c + positionFactor) + xOffSet;
            CGFloat y = frameSize.height * frameSizeFactor / cellCount * (r + positionFactor) + yOffSet;
            
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

-(void) setCellValue: (int) val AtRow: (int) row AndCol: (int) col {
    int adjustedIndex = (row*9) + col;
    
    // only show non zero initial values (0 means empty value)
    if (val !=0) {
        PJGridCellView* current = [_gridCellArray objectAtIndex:adjustedIndex];
        [current setCellValue:val];
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
