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
@property (nonatomic, strong) NSError *error;
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

- (void)setFetchWillHaveError:(BOOL)fetchWillHaveError
{
    _fetchWillHaveError = fetchWillHaveError;
    self.error = [[NSError alloc] init];
}

@end
