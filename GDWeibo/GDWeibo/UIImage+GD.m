//
//  UIImage+GD.m
//  GDWeibo
//
//  Created by 锋之韵 on 16/7/18.
//  Copyright (c) 2016年 fz. All rights reserved.
//

#import "UIImage+GD.h"

@implementation UIImage (GD)

+ (UIImage *)resizedImageWithName:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

@end
