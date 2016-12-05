//
//  rootViewController.m
//  Gallery
//
//  Created by Борис Гузиенко on 04.12.16.
//  Copyright © 2016 Борис Гузиенко. All rights reserved.
//

#import "rootViewController.h"
#import "DetailViewController.h"

@interface rootViewController ()

@end

@implementation rootViewController;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder]) {
        self.titleArray = @[@"Беларусия", @"Евросоюз", @"Казахстан", @"Турция", @"Украина"];
        self.imageArray = @[@"Belarus.jpg", @"Europe.jpg", @"Kazah.jpg", @"Turk.png", @"Ukrain.jpeg"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier=@"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    NSString *title=self.titleArray[indexPath.row];
    cell.textLabel.text=title;
    
    UIImage *temp_image = [UIImage imageNamed:self.imageArray[indexPath.row]];
   
    CGSize newSize=CGSizeMake(35.0f, 35.0f);
    
    UIGraphicsBeginImageContext(newSize);
    [temp_image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    cell.imageView.image= UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return cell;
}
 
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
   if([segue.identifier isEqualToString:@"DetailView"])
    {
    
        DetailViewController *destinationView = segue.destinationViewController;
        // ToSender.delegate = self;

        destinationView.imageLabel.text=@"Test";
        
       /* UIImage *temp_image = [UIImage imageNamed:@"Europe.jpg"]; */
        
        // CGSize newSize=CGSizeMake(ToSender.imageData.intrinsicContentSize.height,ToSender.imageData.intrinsicContentSize.width);
        
   /*     UIGraphicsBeginImageContext(newSize);
        [temp_image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
        ToSender.imageData.image= UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext(); */
        
    }
}

@end
