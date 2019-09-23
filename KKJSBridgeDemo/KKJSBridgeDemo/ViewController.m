//
//  ViewController.m
//  KKJSBridgeDemo
//
//  Created by karos li on 2019/8/29.
//  Copyright © 2019 karosli. All rights reserved.
//

#import "ViewController.h"
#import <KKJSBridgeWrapper/KKJSBridgeWrapper.h>
#import "ModuleA.h"
#import "ModuleB.h"
#import "ModuleC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"加载" style:UIBarButtonItemStylePlain target:self action:@selector(load)];
}

- (void)load {
    NSString *url = @"";
    {
        // 测试JSBridge
        url = @"http://127.0.0.1:50000/moduleTest";
    }
    {
        // 测试 ajax 和 set-cookie
//        url = @"http://127.0.0.1:50000/index";
    }
    {
        // 测试服务器端重定向
//        url = @"http://127.0.0.1:50000/index302";
    }
    {
        // 测试第三方网站 ajax 请求
//        url = @"https://m.taobao.com";
    }
    
    WebViewController *web = [[WebViewController alloc] initWithUrl:url];
    
    ModuleContext *context = [ModuleContext new];
    context.vc = web;
    context.scrollView = web.webView.scrollView;
    context.name = @"webview";
    
    [web.jsBridgeEngine.moduleRegister registerModuleClass:[ModuleC class]];
    [web.jsBridgeEngine.moduleRegister registerModuleClass:[ModuleB class] withContext:context];
    [web.jsBridgeEngine.moduleRegister registerModuleClass:[ModuleA class]];
    [self.navigationController pushViewController:web animated:YES];
}

@end
