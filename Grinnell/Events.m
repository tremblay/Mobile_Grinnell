//
//  Events.m
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import "Events.h"


@implementation Events
@synthesize webView;

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
    [webView release];
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
    NSURL *urlString = [[NSURL alloc] initWithString:@"http://www.grinnell.edu/includes/n/caloid.php"];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:urlString];
    NSData *returnData = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];
    NSString *HTMLData = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    resourcePath = [resourcePath stringByReplacingOccurrencesOfString:@"/" withString:@"//"];
    resourcePath = [resourcePath stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    [webView loadHTMLString:HTMLData baseURL:[NSURL URLWithString:[NSString stringWithFormat:@"file:/%@//",resourcePath]]];
    [super viewDidLoad];
    self.title = @"Events";
    // Do any additional setup after loading the view from its nib.
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
