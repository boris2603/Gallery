//
//  DetailViewController.h
//  Gallery
//
//  Created by Борис Гузиенко on 04.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageData;

@end
