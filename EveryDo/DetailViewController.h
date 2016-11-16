//
//  DetailViewController.h
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo* detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *listDetail;

@end

