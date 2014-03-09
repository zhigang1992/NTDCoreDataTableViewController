//
//  NTDCoreDataTableViewControllerTests.m
//  NTDCoreDataTableViewControllerTests
//
//  Created by Nicholas Tian on 3/8/14.
//  Copyright (c) 2014 Nicholas Tian. All rights reserved.
//

    // Class Under Test
#import "NTDCoreDataTableViewController.h"

    // Collaborators
#import "NTDFakeCDTVC.h"
#import "NTDFakeFetchedResultsController.h"
#import "NTDFakeTableView.h"

    // Test Support
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
    sut = [[NTDCoreDataTableViewController alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIfFRCIsNotNilThenFRCsPerformFetchIsCalledWhenSutsPerformFetchIsCalled
{
    // given
    sut.fetchedResultsController = [[NTDFakeFetchedResultsController alloc] init];
    // when
    [sut performFetch];
    // then
    XCTAssertTrue([(NTDFakeFetchedResultsController *)(sut.fetchedResultsController) performFetchIsCalled]);
}

- (void)testTableViewsReloadDataIsCalledWhenSutsPerformFetchIsCalled
{
    // given
    sut.tableView = [[NTDFakeTableView alloc] init];
    // when
    [sut performFetch];
    // then
    XCTAssertTrue([(NTDFakeTableView *)sut.tableView reloadDataIsCalled]);
}

- (void)testSutWillLogFailureIfFRCsFetchFailed
{
    // given
    sut = [[NTDFakeCDTVC alloc] init];
    sut.fetchedResultsController = [[NTDFakeFetchedResultsController alloc] init];

    [(NTDFakeFetchedResultsController *)sut.fetchedResultsController setFetchWillSucceed:NO];
    // when
    [sut performFetch];
    // then
    XCTAssertTrue([(NTDFakeCDTVC *)sut loggedFailure]);
}

@end
