//
//  calc.m
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import "Calc.h"
#import "Stack.h"
#import "ActionClass.h"

@interface Calc()
@property (nonatomic, readwrite, retain) NSNumber * defaultValue;
@property (nonatomic, retain) Stack *stack;
@end

@implementation Calc
- (id)initWithDefaultValue:(NSNumber*)value; {
    self = [super init];
    if (self) {
        _defaultValue = [value retain];
        _stack = [[Stack alloc] init];
    }
    return self;
}

- (Calc*)add:(NSNumber*)number {
    ActionClass *action = [[ActionClass alloc] initWithAction:mAdd number:number];
    [self.stack push:action];
    return self;}

- (Calc*)subtract:(NSNumber*)number {
    ActionClass *action = [[ActionClass alloc] initWithAction:mSubtract number:number];
    [self.stack push:action];
    return self;
}

- (Calc*)multiply:(NSNumber *)number{
    ActionClass *action = [[ActionClass alloc] initWithAction:mMultiply number:number];
    [self.stack push:action];
    return self;}

- (Calc*)devide:(NSNumber *)number{
    ActionClass *action = [[ActionClass alloc] initWithAction:mDevide number:number];
    [self.stack push:action];
    return self;}

- (Calc*)pow:(NSNumber *)number{
    ActionClass *action = [[ActionClass alloc] initWithAction:mPow number:number];
    [self.stack push:action];
    return self;}


- (NSNumber*)calcualted {
    return ;
}

- (NSString *)description {
    NSNumber *result = [self calcualted];
    return [result stringValue];
}

- (void)dealloc {
    [_defaultValue release];
    [super dealloc];
}
@end
