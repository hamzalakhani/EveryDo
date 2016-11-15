//
//  ToDo.m
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

- (instancetype)initWithToDo:(NSString*)title andWithDescription:(NSString*)todoDescription andWithPriorityNum:(NSInteger)priorityNumber andwithBool:(BOOL)isCompleted {
    self = [super init];
    if (self) {
        _title = @"Grocery";
        _todoDescription = @"List of grocery Items";
        _priorityNumber = 4;
        _isCompleted = YES;
        
        
    }
    return self;
}

@end
