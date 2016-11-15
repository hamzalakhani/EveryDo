//
//  ToDo.h
//  EveryDo
//
//  Created by Hamza Lakhani on 2016-11-15.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject
@property NSString* title;
@property NSString* todoDescription;
@property NSInteger priorityNumber;
@property BOOL isCompleted;

- (instancetype)initWithToDo:(NSString*)title andWithDescription:(NSString*)todoDescription andWithPriorityNum:(NSInteger)priorityNumber andWithBool:(BOOL)isCompleted;

@end
