//
//  NTDFakeFetchedResultsController.h
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NTDFakeFetchedResultsController : NSFetchedResultsController

@property (nonatomic) BOOL performFetchIsCalled;

@end
