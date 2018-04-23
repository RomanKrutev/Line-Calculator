//
//  ActionClass.m
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import "ActionClass.h"

@implementation ActionClass

- (id)initWithAction:(ActionType)action number:(NSNumber*)number; {
    self = [super init];
    if (self) {
        _action = action;
        _number = [number retain];
    }
    return self;
}



- (void)dealloc {
    [_number release];
    [super dealloc];
}

@end
