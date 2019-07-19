//
//  main.m
//  lesson4
//
//  Created by dxl on 2019/7/10.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i=0;
    a:{
        i++;
        
        NSLog(@"i的值为%d",i);
    }
        if (i<5) {
            goto a;
        }else{
            goto b;
        }
    b:{
        NSLog(@"跳远了");
    }
        
    }
    return 0;
}
