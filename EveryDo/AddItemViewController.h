//
//  AddItemViewController.h
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
@protocol AddItemViewContollerDelegate <NSObject>

- (void)didSaveNewToDo:(ToDo *)todoItem;

@end
@interface AddItemViewController : UIViewController

// this outlet is not used
@property (weak, nonatomic) IBOutlet UIButton *save;

@property(nonatomic, weak) id <AddItemViewContollerDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UITextField *descriptionText;

@end
