//
//  DetailViewController.m
//  Gallery
//
//  Created by Борис Гузиенко on 04.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import "DetailViewController.h"
#import "rootViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageLabel.text=self.imageText;
    self.imageData.image=self.imageImage;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 #pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
    
    rootViewController *fromSender = segue.destinationViewController;
    
    if([segue.identifier isEqualToString:@"DetailViewTable"])
    {
        
        UIImage *temp_image = [UIImage imageNamed:@"Europe.jpg"];
        
        CGSize newSize=CGSizeMake(self.imageData.intrinsicContentSize.height,self.imageData.intrinsicContentSize.width);
        
        UIGraphicsBeginImageContext(newSize);
        [temp_image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
        self.imageData.image= UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    if([segue.identifier isEqualToString:@"DetailViewCollection"])
    {
        
        UIImage *temp_image = [UIImage imageNamed:@"Kazan.jpg"];
        
        CGSize newSize=CGSizeMake(self.imageData.intrinsicContentSize.height,self.imageData.intrinsicContentSize.width);
        
        UIGraphicsBeginImageContext(newSize);
        [temp_image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
        self.imageData.image= UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
}
*/
@end
