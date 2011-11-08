//
//  Video.h
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Video : UIViewController {
    UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
- (void)embedVideo:(NSString *)urlString frame:(CGRect)frame;
@end
