//
//  Campus_Map.m
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import "Campus_Map.h"


@implementation Campus_Map
@synthesize scrollView, imageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [imageView release];
    [scrollView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    UIImage *image = [UIImage imageNamed:@"campusmap.jpg"];
    imageView = [[UIImageView alloc] initWithImage:image];
    [scrollView setContentSize:CGSizeMake(imageView.frame.size.width, imageView.frame.size.height)];
    scrollView.maximumZoomScale = 8;
    scrollView.minimumZoomScale = .5;
    scrollView.delegate = self;
    [scrollView addSubview:imageView];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
