//
//  NTDFakeCDTVC.m
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDFakeCDTVC.h"

@interface NTDFakeCDTVC ()

@end

@implementation NTDFakeCDTVC

- (void)logFetchFailure
{
    [super logFetchFailure];
    
    self.loggedFailure = YES;
}

@end
