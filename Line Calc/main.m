//
//  main.m
//  Line Calc
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calc.h"


int main(int argc, const char * argv[]) {
    Calc *calc = [[Calc alloc] initWithDefaultValue:@2];
    [[calc add:@2] multiply:@10];
    NSLog(@"Results of calculation is %@",calc);
    
}
