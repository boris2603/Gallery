//
//  rootViewController.h
//  Gallery
//
//  Created by Борис Гузиенко on 04.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataFactory.h"

@interface rootViewController : UITableViewController

@property (nonatomic,strong) DataFactory *dataFactory;

@end
