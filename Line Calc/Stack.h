//
//  Stack.h
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ActionClass.h"

@interface Stack : NSObject
@property (assign, readonly) long count;

-(void)push:(ActionClass*)anObject;
-(id)pop;
-(void)clear;
-(id)lastObject;
@end
