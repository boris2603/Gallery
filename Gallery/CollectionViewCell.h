//
//  CollectionViewCell.h
//  Gallery
//
//  Created by Борис Гузиенко on 11.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageData;
@property (weak, nonatomic) IBOutlet UILabel *imageTitle;


@end
