//
//  DataFactory.m
//  Gallery
//
//  Created by Борис Гузиенко on 11.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import "DataFactory.h"

@implementation DataFactory

- (instancetype)init
{
 if (self== [super init])
 {
    
    self.titleArray = @[@"Беларусия", @"Евросоюз", @"Казахстан", @"Турция", @"Украина"];
    self.imageArray = @[@"Belarus.jpg", @"Europe.jpg", @"Kazah.jpg", @"Turk.png", @"Ukrain.jpeg"];
 }
 return self;
};


@end
