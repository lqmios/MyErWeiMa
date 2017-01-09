//
//  ResultViewController.m
//  MyErWeiMa
//
//  Created by lqm on 17/1/9.
//  Copyright © 2017年 LQM. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
{
    UIWebView *webView;
}
@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    NSLog(@"%@",self.codeString);
    webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.codeString]];
    [self.view addSubview:webView];
    [webView loadRequest:request];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
