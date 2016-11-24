//
//  BPBorderView.m
//  Pods
//
//  Created by Ben Palmer on 11/22/16.
//
//

#import "BPBorderView.h"

@interface BPBorderView ()

@property (nonatomic) NSUInteger orientation;
@property (nonatomic) CGFloat borderWidth;
@property (weak, nonatomic) UIColor *borderColor;

@end

@implementation BPBorderView

-(id)initWithFrame:(CGRect)frame borderOrientationFlags: (BPBorderViewOrientation)flags {
    
    if((self = [super initWithFrame:frame])){
        _orientation = flags;
        _borderWidth = 1.0;
        _borderColor = [UIColor blackColor];
        
        [self setUpBorders];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame borderOrientationFlags: (BPBorderViewOrientation)flags borderColor:(UIColor *)color borderWidth:(CGFloat)width {
    
    if((self = [super initWithFrame:frame])){
        _orientation = flags;
        _borderWidth = width;
        _borderColor = color;
        
        [self setUpBorders];
    }
    return self;
}



-(void)setUpBorders {
    
    if(self.orientation & BPBorderViewOrientationTop){
        UIView *border = [UIView new];
        border.backgroundColor = self.borderColor;
        [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
        border.frame = CGRectMake(0, 0, self.frame.size.width, self.borderWidth);
        [self addSubview:border];
    }
    
    if(self.orientation & BPBorderViewOrientationRight){
        UIView *border = [UIView new];
        border.backgroundColor = self.borderColor;
        [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
        border.frame = CGRectMake(self.frame.size.width - self.borderWidth, 0, self.borderWidth, self.frame.size.height);
        [self addSubview:border];
    }
    
    if(self.orientation & BPBorderViewOrientationBottom){
        UIView *border = [UIView new];
        border.backgroundColor = self.borderColor;
        [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
        border.frame = CGRectMake(0, self.frame.size.height - self.borderWidth, self.frame.size.width, self.borderWidth);
        [self addSubview:border];
    }
    
    if(self.orientation & BPBorderViewOrientationLeft){
        UIView *border = [UIView new];
        border.backgroundColor = self.borderColor;
        [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
        border.frame = CGRectMake(0, 0, self.borderWidth, self.frame.size.height);
        [self addSubview:border];
    }
    
}

@end
