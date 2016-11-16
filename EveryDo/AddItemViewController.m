//
//  AddItemViewController.m
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController () <UITextFieldDelegate>

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputText.delegate = self;
    self.descriptionText.delegate = self;
}

- (IBAction)save:(id)sender {
    ToDo *newToDo = [[ToDo alloc]initWithToDo:self.inputText.text andWithDescription:self.descriptionText.text andWithPriorityNum:0 andWithBool:NO];
    [self.delegate didSaveNewToDo:newToDo];
    [self dismissViewControllerAnimated:true completion:nil];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
