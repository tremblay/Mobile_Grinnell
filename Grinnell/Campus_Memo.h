//
//  Campus_Memo.h
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Campus_Memo : UIViewController {
    UIWebView *webView;
}
@property (nonatomic, retain) IBOutlet UIWebView *webView;
@end
