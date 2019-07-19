//
//  main.m
//  OCFunction
//
//  Created by dxl on 2019/7/10.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>
//求矩形面积的函数 s=a*b
double qiumianji(double a,double b){
    double s=a*b;
    return s;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"argc=%d",argc);
        
        for (int i=0; i<argc; i++) {
            NSLog(@"%s",argv[i]);
        }
    }
    return 0;
}
