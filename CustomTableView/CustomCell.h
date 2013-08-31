//
//  CustomCell.h
//  CustomTableView
//
//  Created by Hendra Nicholas on 8/31/13.
//  Copyright (c) 2013 Hendra Nicholas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (weak, nonatomic) IBOutlet UILabel *labelTime;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *buttonComment;

@end
