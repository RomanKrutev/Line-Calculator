//
//  Stack.m
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import "Stack.h"

@interface Stack ()

@property (nonatomic,strong) NSMutableArray *data;
@end
@implementation Stack

-(id)init{
    if (self=[super init]){
        _data = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return  self;
}

-(void)push:(ActionClass*)anObject
{
    [self.data addObject:anObject];
    _count++;
}

-(id)pop{
    id obj = nil;
    if ([self.data count] > 0){
        obj = [self.data lastObject];
        [self.data removeLastObject];
        _count = self.data.count;
    }
    return obj;
}

-(void)clear{
    [self.data removeAllObjects];
    _count = 0;
}

-(id)lastObject{
    id obj = nil;
    if ([self.data count] > 0){
        obj = [self.data lastObject];
    }
    return obj;
}
@end
