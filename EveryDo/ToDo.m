//
//  ToDo.m
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

- (instancetype)initWithToDo:(NSString*)title andWithDescription:(NSString*)todoDescription andWithPriorityNum:(NSInteger)priorityNumber andWithBool:(BOOL)isCompleted {
    self = [super init];
    if (self) {
        _title = title;
        _todoDescription = todoDescription;
        _priorityNumber = priorityNumber;
        _isCompleted = NO;
        
        
    }
    return self;
}

@end
