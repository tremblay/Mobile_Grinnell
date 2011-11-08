//
//  Campus_Map.h
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Campus_Map : UIViewController <UIScrollViewDelegate>{
    UIScrollView *scrollView;
    UIImageView *imageView;
}
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) UIImageView *imageView;

@end
