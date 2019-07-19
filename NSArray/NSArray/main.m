//
//  main.m
//  NSArray
//
//  Created by dxl on 2019/7/12.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // OC的数组可以存储不同类型的对象，OC的数组只能存储对象
        
        NSArray *array1 = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
        // 数组的长度
        int count = (int)array1.count;
        NSLog(@"count =%d",count);
        // 判断当前数组中是否包含有目标对象
        BOOL isHave = [array1 containsObject:@"2"];
        if (isHave) {
            NSLog(@"存在");
        } else {
            NSLog(@"不存在");
        }
        //取出数组中最后一个元素
        NSString *str = [array1 lastObject];
        NSLog(@"str = %@",str);
        //取出数组中首个元素
        str = [array1 firstObject];
        NSLog(@"str = %@",str);
        //取出数组中下标为3的元素
        str = [array1 objectAtIndex:3];
        NSLog(@"str = %@",str);
        //打印元素对应的下标（若元素不存在则打印出-1值）
        int index = (int)[array1 indexOfObject:@"3"];
        NSLog(@"index = %d",index);
        
        // 数组的遍历（1.基本的for循环通过下标逐一取出查看。2.for in快速枚举。3.枚举器（迭代器））
        
        Person *p = [[Person alloc] init];
        p.personName = @"张三";
        
        NSArray *array2 = [[NSArray alloc] initWithObjects:@"a",@"b",p,@"c", nil];
        
        // 1
        for (int i=0; i<array1.count; i++) {
            NSString *str1 = [array1 objectAtIndex:i];
            NSLog(@"str1 = %@",str1);
        }
        
        // 2（若使用快速枚举我们需要让数组中的元素的类型保持一致）
        for(NSString *str2 in array2){
            NSLog(@"str2 = %@",str2);
        }
    }
    return 0;
}
