//
//  main.m
//  NSMutibleArray
//
//  Created by dxl on 2019/7/12.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] initWithName:@"张三"];
        Person *p2 = [[Person alloc] initWithName:@"李四"];
        Person *p3 = [[Person alloc] initWithName:@"王五"];
        
        NSArray *personArray = [[NSArray alloc] initWithObjects:p2,p3, nil];
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        //添加元素
        [array addObject:p1];
        [array addObjectsFromArray:personArray];
        NSLog(@"%@",array);
        
        // 删除元素
        // 删除数组内所有元素
        // [array removeAllObjects];
        // 删除最后一个元素
        // [array removeLastObject];
        // 删除指定元素
        [array removeObject:p2];
        // 删除指定下标元素（注意数组内元素的个数下表问题会导致奔溃）
        // [array removeObjectAtIndex:2];
        NSLog(@"2.%@",array);
        
        // 交换元素的位置
        [array exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"3.%@",array);
        
    }
    return 0;
}
