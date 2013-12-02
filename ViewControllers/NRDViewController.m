//
//  NRDViewController.m
//  ArrayDataSource
//
//  Created by Joshua Sullivan on 12/2/13.
//  Copyright (c) 2013 The Nerdery. All rights reserved.
//

#import "NRDViewController.h"
#import "NRDArrayDataSource.h"
#import "NRDBigLabelCell.h"

/**
 *  The dictionary key for our data array.
 */
static NSString *const kValueKey = @"value";

@interface NRDViewController ()

/**
 *  The data source that will be backing our table view.
 */
@property (strong, nonatomic) NRDArrayDataSource *dataSource;

/**
 *  Table view IBOutlet to let us manually set its data source.
 */
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create the data for the data source.
	NSArray *dataArray = @[@{kValueKey: @"First"},
                           @{kValueKey: @"Second"},
                           @{kValueKey: @"Third"},
                           @{kValueKey: @"Fourth"},
                           @{kValueKey: @"Fifth"},
                           @{kValueKey: @"Sixth"},
                           @{kValueKey: @"Seventh"},
                           @{kValueKey: @"Eighth"},
                           @{kValueKey: @"Nineth"},
                           @{kValueKey: @"Tenth"},
                           @{kValueKey: @"Eleventh"},
                           @{kValueKey: @"Twelfth"}];
    
    // Set up the data source.
    self.dataSource = [[NRDArrayDataSource alloc] initWithDataArray:dataArray
                                                           userInfo:nil
                                                    reuseIdentifier:kBigLabelCellIdentifier
                                                 configurationBlock:^(id cell, id dataObject, NSDictionary *userInfo) {
                                                     NRDBigLabelCell *bigCell = cell;
                                                     bigCell.bigTextLabel.text = [(NSDictionary *)dataObject valueForKey:kValueKey];
                                                 }];
    
    // Assign the data source as the table's data source.
    self.tableView.dataSource = self.dataSource;
}

@end
