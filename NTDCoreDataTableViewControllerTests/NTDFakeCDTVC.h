//
//  NTDFakeCDTVC.h
//  NTDCoreDataTableViewController
//
//  Created by Nicholas Tian on 3/9/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDCoreDataTableViewController.h"

@interface NTDFakeCDTVC : NTDCoreDataTableViewController

@property (nonatomic) BOOL loggedFailure;
@property (nonatomic) BOOL loggedError;
@property (nonatomic) BOOL performFetchIsCalled;

@end
