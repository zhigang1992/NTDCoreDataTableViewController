//
//  NTDFakeFetchedResultsController.m
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDFakeFetchedResultsController.h"

@implementation NTDFakeFetchedResultsController

- (BOOL)performFetch:(NSError *__autoreleasing *)error
{
    self.performFetchIsCalled = YES;
    return [super performFetch:error];
}

@end
