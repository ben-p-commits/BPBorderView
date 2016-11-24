//
//  BPBorderView.h
//  Pods
//
//  Created by Ben Palmer on 11/22/16.
//
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, BPBorderViewOrientation) {
    BPBorderViewOrientationNone         = 0,
    BPBorderViewOrientationTop          = 1 << 0,
    BPBorderViewOrientationRight        = 1 << 1,
    BPBorderViewOrientationBottom       = 1 << 2,
    BPBorderViewOrientationLeft         = 1 << 3
};

@interface BPBorderView : UIView

-(id)initWithFrame:(CGRect)frame borderOrientationFlags: (BPBorderViewOrientation)flags borderColor:(UIColor *)color borderWidth:(CGFloat)width;
-(id)initWithFrame:(CGRect)frame borderOrientationFlags: (BPBorderViewOrientation)flags;

@end
