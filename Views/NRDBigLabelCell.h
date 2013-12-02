//
//  NRDBigLabelCell.h
//  ArrayDataSource
//
//  Created by Joshua Sullivan on 12/2/13.
//  Copyright (c) 2013 The Nerdery. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const kBigLabelCellIdentifier;

@interface NRDBigLabelCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *bigTextLabel;

@end
