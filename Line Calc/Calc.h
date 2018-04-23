//
//  calc.h
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calc : NSObject
@property (nonatomic, readonly, retain) NSNumber * defaultValue;

- (id)initWithDefaultValue:(NSNumber*)value;

- (Calc*)add:(NSNumber*)number;
- (Calc*)subtract:(NSNumber*)number;
- (Calc*)multiply:(NSNumber*)number;
- (Calc*)devide:(NSNumber*)number;
- (Calc*)pow:(NSNumber*)number;

@end
