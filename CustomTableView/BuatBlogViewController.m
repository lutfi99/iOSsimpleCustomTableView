//
//  BuatBlogViewController.m
//  CustomTableView
//
//  Created by Hendra Nicholas on 8/31/13.
//  Copyright (c) 2013 Hendra Nicholas. All rights reserved.
//

#import "BuatBlogViewController.h"
#import "CustomCell.h"

@interface BuatBlogViewController ()

@end

@implementation BuatBlogViewController{
    NSArray *image;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    image = [NSArray arrayWithObjects:@"Untitled-1.jpg", @"Untitled-2.jpg", @"Untitled-3.jpg", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [image count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *customCellIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:customCellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    
    cell.imageView.image = [UIImage imageNamed:[image objectAtIndex:indexPath.row]];
        
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 400;
}

@end
