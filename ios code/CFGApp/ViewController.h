//
//  ViewController.h
//  CFGApp
//
//  Created by Brandon Perry on 10/31/15.
//  Copyright © 2015 Brandon Perry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView *webview;

@property (nonatomic, weak) IBOutlet UIButton *myLoginButton;

@property (nonatomic, weak) IBOutlet UIImageView *goodwillLogo;

//@property (nonatomic, weak) IBOutlet UIButton *myLoginButton;

@end

