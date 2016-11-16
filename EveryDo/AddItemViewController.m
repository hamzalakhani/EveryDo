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
}
*/
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
