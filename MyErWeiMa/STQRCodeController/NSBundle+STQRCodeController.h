//
//  NSBundle+STQRCodeController.h
//  STQRCodeController
//
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSBundle (STQRCodeController)

+ (instancetype)st_qrcodeControllerBundle;
+ (UIImage *)st_qrcodeControllerImageWithName:(NSString *)name;

@end
