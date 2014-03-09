//
//  NTDFakeFetchedResultsController.m
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDFakeFetchedResultsController.h"

@interface NTDFakeFetchedResultsController ()
@property (nonatomic) BOOL fakePerformFetchsReturnValue;
@end

@implementation NTDFakeFetchedResultsController

- (BOOL)performFetch:(NSError *__autoreleasing *)error
{
    self.performFetchIsCalled = YES;
    
    if (self.fakePerformFetchsReturnValue) {
        return self.fetchWillSucceed;
    } else {
        return [super performFetch:error];
    }
}

- (void)setFetchWillSucceed:(BOOL)fetchWillSucceed
{
    _fetchWillSucceed = fetchWillSucceed;
    self.fakePerformFetchsReturnValue = YES;
}

@end
