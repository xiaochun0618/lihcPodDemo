//
//  LHCViewController.m
//  lihcPodDemo
//
//  Created by lihc on 12/22/2018.
//  Copyright (c) 2018 lihc. All rights reserved.
//

#import "LHCViewController.h"
#import "YTKWebViewJSManager.h"
#import "YTKAlertHandler.h"

@interface LHCViewController ()

@property (nonatomic, strong) UIWebView *webView;

@property (nonatomic, strong) YTKWebViewJSManager *manager;

@end

@implementation LHCViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.webView];
    self.webView.frame = self.view.frame;
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.manager addJSCommandHandler:[YTKAlertHandler new] forCommandName:@"sayHello"];
    NSURL *htmlURL = [[NSBundle mainBundle] URLForResource:@"testWebView"
                                             withExtension:@"htm"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:htmlURL]];
}

- (UIWebView *)webView {
    if (nil == _webView) {
        _webView = [UIWebView new];
    }
    return _webView;
}

- (YTKWebViewJSManager *)manager {
    if (nil == _manager) {
        _manager = [[YTKWebViewJSManager alloc] initWithWebView:self.webView];
    }
    return _manager;
}

@end
