//
//  ActionClass.h
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <math.h>

typedef NS_ENUM(NSUInteger, ActionType) {
    mAdd,
    mSubtract,
    mMultiply,
    mDevide,
    mPow
};

@interface ActionClass : NSObject
@property (nonatomic, assign) ActionType action;
@property (nonatomic, retain) NSNumber *number;

- (id)initWithAction:(ActionType)action number:(NSNumber*)number;

@end
