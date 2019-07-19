//
//  Person.m
//  NSMutibleArray
//
//  Created by dxl on 2019/7/12.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if(self){
        _personName = name;
    }
    return self;
}

@end
