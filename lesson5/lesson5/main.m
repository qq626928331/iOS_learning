//
//  main.m
//  lesson5
//
//  Created by dxl on 2019/7/10.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i=0; i<100; i++) {
            
            if (i%2==0) continue;
            NSLog(@"i的值为:%d",i);
        }
        
    }
    return 0;
}
