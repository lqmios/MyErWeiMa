//
//  STQRCodeController.h
//  STQRCodeController
//
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, STQRCodeResultType) {
    STQRCodeResultTypeSuccess = 0, // 1.成功获取图片中的二维码信息
    STQRCodeResultTypeNoInfo = 1,  // 2.识别的图片没有二维码信息
    STQRCodeResultTypeError = 2   // 3.其他错误
};

@class STQRCodeController;

@protocol STQRCodeControllerDelegate <NSObject>

- (void)qrcodeController:(STQRCodeController *)qrcodeController readerScanResult:(NSString *)readerScanResult type:(STQRCodeResultType)resultType;
@end
@interface STQRCodeController : UIViewController
@property(nonatomic, weak)id<STQRCodeControllerDelegate>delegate;
@end










