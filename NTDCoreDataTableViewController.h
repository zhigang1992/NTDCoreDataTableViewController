//
//  CoreDataTableViewController.h
//
//  Created by Nicholas Tian on 3/2/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTDCoreDataTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

#pragma mark - Abstract Methods

// Returns identifier for UITableViewCell.
- (NSString *)cellIdentifier;

// Called in tableView:cellForRowAtIndexPath:.
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

// Called in the getter of fetchedResultsController.
- (NSFetchedResultsController *)newFetchedResultsController;

@end
