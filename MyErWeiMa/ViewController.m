//
//  ViewController.m
//  MyErWeiMa
//https://github.com/STShenZhaoliang/STQRCodeController
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import "ViewController.h"
#import "STQRCodeController.h"
#import "STQRCodeAlert.h"
#import "ResultViewController.h"
@interface ViewController ()<STQRCodeControllerDelegate>
/** 1. */
@property(nonatomic, strong)UIButton *buttonGoQR;
@end

@implementation ViewController

#pragma mark - --- 1.init 生命周期 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.buttonGoQR];
}

#pragma mark - --- 2.delegate 视图委托 ---
- (void)qrcodeController:(STQRCodeController *)qrcodeController readerScanResult:(NSString *)readerScanResult type:(STQRCodeResultType)resultType
{
    NSLog(@"%s %@", __FUNCTION__, readerScanResult);
    NSLog(@"%s %lu", __FUNCTION__, (unsigned long)resultType);
//    [STQRCodeAlert showWithTitle:readerScanResult];
    
    ResultViewController *VC = [[ResultViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
    VC.codeString = readerScanResult;
    
}
#pragma mark - --- 3.event response 事件相应 ---

#pragma mark - --- 4.private methods 私有方法 --调转到相机页面-
- (void)gotoQR {
    
    STQRCodeController *codeVC = [[STQRCodeController alloc]init];
    codeVC.delegate = self;

    [self.navigationController pushViewController:codeVC animated:YES];
}
#pragma mark - --- 5.setters 属性 ---

#pragma mark - --- 6.getters 属性 —--
- (UIButton *)buttonGoQR
{
    if (!_buttonGoQR) {
        _buttonGoQR = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
        [_buttonGoQR setTitle:@"跳转到二维码界面" forState:UIControlStateNormal];
        [_buttonGoQR setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_buttonGoQR setBackgroundColor:[UIColor magentaColor]];
        _buttonGoQR.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
        [_buttonGoQR addTarget:self action:@selector(gotoQR) forControlEvents:UIControlEventTouchUpInside];
    }
    return _buttonGoQR;
}

@end
