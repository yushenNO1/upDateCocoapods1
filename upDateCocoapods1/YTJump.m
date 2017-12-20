//
//  YTJump.m
//  LYTCommonlyCode
//
//  Created by 李宇廷 on 2017/12/19.
//  Copyright © 2017年 李宇廷. All rights reserved.
//

#import "YTJump.h"

@implementation YTJump

+(void)JumpPointView:(UIView *)jumpView{
    CGFloat t =4.0;
    CGAffineTransform translateRight  =CGAffineTransformTranslate(CGAffineTransformIdentity, t,0.0);
    CGAffineTransform translateLeft =CGAffineTransformTranslate(CGAffineTransformIdentity,-t,0.0);
    jumpView.transform = translateLeft;
    [UIView animateWithDuration:0.07 delay:0.0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        [UIView setAnimationRepeatCount:2.0];
        jumpView.transform = translateRight;
    } completion:^(BOOL finished){
        if(finished){
            [UIView animateWithDuration:0.05 delay:0.0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                jumpView.transform =CGAffineTransformIdentity;
            } completion:NULL];
        }
    }];
    
}

@end
