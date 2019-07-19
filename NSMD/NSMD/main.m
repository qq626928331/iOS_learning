//
//  main.m
//  NSMD
//
//  Created by dxl on 2019/7/12.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        // 添加键值对
        [dict setObject:@"1" forKey:@"a"];
        [dict setObject:@"2" forKey:@"b"];
        [dict setObject:@"3" forKey:@"c"];
        
        // 删除键值对
        // [dict removeAllObjects];
//        [dict removeObjectForKey:@"b"];
        [dict removeObjectsForKeys:[NSArray arrayWithObjects:@"a",@"b", nil]];
        NSLog(@"dict = %@",dict);
        
    }
    return 0;
}
