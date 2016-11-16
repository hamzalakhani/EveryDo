//
//  MasterViewController.m
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDo.h"
#import "TableViewCell.h"
#import "AddItemViewController.h"
@interface MasterViewController ()<AddItemViewContollerDelegate>

@property (nonatomic) NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.navigationItem.leftBarButtonItem = self.editButtonItem;
  
  //    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
  //    self.navigationItem.rightBarButtonItem = addButton;
  
  ToDo *toDoList1 = [[ToDo alloc]initWithToDo:@"Groceries" andWithDescription:@"grab groceries for the week" andWithPriorityNum:2 andWithBool:YES];
  
  ToDo *toDoList2 = [[ToDo alloc]initWithToDo:@"House expenses" andWithDescription:@"list of monthly house expense" andWithPriorityNum:1 andWithBool:YES];
  ToDo *toDoList3 = [[ToDo alloc]initWithToDo:@"Bills" andWithDescription:@"Bills for the month" andWithPriorityNum:3 andWithBool:YES];
  ToDo *toDoList4 = [[ToDo alloc]initWithToDo:@"Games" andWithDescription:@"games to purchase for the month" andWithPriorityNum:5 andWithBool:YES];
  ToDo *toDoList5 = [[ToDo alloc]initWithToDo:@"calls" andWithDescription:@"list of people to call this month" andWithPriorityNum:4 andWithBool:YES];
  self.objects = [NSMutableArray array];
  [self.objects addObjectsFromArray:@[toDoList1, toDoList2, toDoList3, toDoList4, toDoList5]];
  
}

// method not used since this was the old action on the old button in the template code, always delete unused code
//- (void)insertNewObject:(id)sender {
//
//    [self.objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([[segue identifier] isEqualToString:@"showDetail"]) {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    ToDo *object = self.objects[indexPath.row];
    DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
    [controller setDetailItem:object];
  }
  if ([[segue identifier] isEqualToString:@"addItem"]) {
    
    AddItemViewController *controller1 = (AddItemViewController *)[segue destinationViewController];
    controller1.delegate= self;
  }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  ToDo *toDo = self.objects[indexPath.row];
  cell.toDo = toDo;
  //    cell.titleDescription.text = testToDo.todoDescription;
  //    cell.titleLabel.text = self.objects[indexPath.row];//to access an object in an array you use this method
  //    cell.titleDescription.text = @"greetings";
  
  //    NSDate *object = self.objects[indexPath.row];
  //    cell.textLabel.text = [object description];
  return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
  // Return NO if you do not want the specified item to be editable.
  return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
  if (editingStyle == UITableViewCellEditingStyleDelete) {
    [self.objects removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
  } else if (editingStyle == UITableViewCellEditingStyleInsert) {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
  }
}
- (void)didSaveNewToDo:(ToDo *)todoItem {
  [self.objects addObject:todoItem];
  [self.tableView reloadData];
}



@end
