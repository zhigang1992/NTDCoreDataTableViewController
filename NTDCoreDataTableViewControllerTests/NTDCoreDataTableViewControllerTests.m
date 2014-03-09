//
//  NTDCoreDataTableViewControllerTests.m
//  NTDCoreDataTableViewControllerTests
//
//  Created by Nicholas Tian on 3/8/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

#import "NTDCoreDataTableViewController.h"
#import <XCTest/XCTest.h>

@interface NTDCoreDataTableViewControllerTests : XCTestCase

@end

@implementation NTDCoreDataTableViewControllerTests
{
    NTDCoreDataTableViewController *sut;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIfFRCIsNotNilThenFRCsPerformFetchIsCalledWhenSutsPerformFetchIsCalled
{
    // given
    sut.fetchedResultsController = [[NSFetchedResultsController alloc] init];
    // when
    [sut performFetch];
    // then
    XCTAssertTrue(sut.fetchedResultsController.performFetchIsCalled);
}

@end
