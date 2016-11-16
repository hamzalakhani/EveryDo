//
//  TableViewCell.m
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "TableViewCell.h"
#import "ToDo.h"

@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleDescription;
@end
@implementation TableViewCell


- (void)setToDo:(ToDo *)toDo {
  self.titleLabel.text = toDo.title;
  self.titleDescription.text = toDo.todoDescription;
  _toDo = toDo;
}


@end
