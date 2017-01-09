//
//  NSBundle+STQRCodeController.m
//  STQRCodeController
//
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import "NSBundle+STQRCodeController.h"
#import "STQRCodeController.h"

@implementation NSBundle (STQRCodeController)

+ (instancetype)st_qrcodeControllerBundle
{
    static NSBundle *bundle = nil;
    bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[STQRCodeController class]] pathForResource:@"STQRCodeController" ofType:@"bundle"]];
    return bundle;
}

+ (UIImage *)st_qrcodeControllerImageWithName:(NSString *)name
{
    static UIImage *image = nil;
    image = [[UIImage imageWithContentsOfFile:[[self st_qrcodeControllerBundle] pathForResource:name ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
@end
