//
//  ViewController.m
//  CFGApp
//
//  Created by Brandon Perry on 10/31/15.
//  Copyright © 2015 Brandon Perry. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview.delegate = self;

    
    // Handle clicks on the button
    [_myLoginButton
     addTarget:self
     action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    NSURL *url = [NSURL URLWithString:@"http://ec2-54-159-233-105.compute-1.amazonaws.com"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:requestURL];
}

// Once the button is clicked, show the login dialog
-(void)loginButtonClicked
{
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login
     logInWithReadPermissions: @[@"public_profile"]
     fromViewController:self
     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
         if (error) {
             NSLog(@"Process error");
         } else if (result.isCancelled) {
             NSLog(@"Cancelled");
         } else {
             NSLog(@"Logged in");
             _webview.hidden = false;
             _myLoginButton.hidden = true;
             _goodwillLogo.hidden = true;
             //ViewController *viewController = [[ViewController alloc] init];
             //[self presentViewController:viewController animated:YES completion:nil];
         }
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
