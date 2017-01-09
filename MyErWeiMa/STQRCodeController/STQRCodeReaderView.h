//
//  STQRCodeReaderView.h
//  STQRCodeController
//
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class STQRCodeReaderView;

@protocol STQRCodeReaderViewDelegate <NSObject>
- (void)qrcodeReaderView:(STQRCodeReaderView *)qrcodeReaderView readerScanResult:(NSString *)readerScanResult;
@end

@interface STQRCodeReaderView : UIView

@property (nonatomic, weak) id<STQRCodeReaderViewDelegate> delegate;

/** 开启扫描 */
- (void)startScan;

/** 关闭扫描 */
- (void)stopScan;
@end
NS_ASSUME_NONNULL_END
