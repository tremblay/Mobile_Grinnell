//
//  RootViewController.h
//  Grinnell
//
//  Created by Colin Tremblay on 11/6/11.
//  Copyright 2011 __Grinnell_AppDev__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RootViewController : UIViewController <NSFetchedResultsControllerDelegate> {
    UITableView *newTableView;
    NSArray *menuItems;
}
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) IBOutlet UITableView *newTableView;
@property (nonatomic, retain) NSArray *menuItems;

@end
