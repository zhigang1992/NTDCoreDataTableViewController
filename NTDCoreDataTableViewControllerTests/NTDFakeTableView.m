//
//  NTDFakeTableView.m
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDFakeTableView.h"

@implementation NTDFakeTableView

- (void)reloadData
{
    [super reloadData];
    self.reloadDataIsCalled = YES;
}

@end
