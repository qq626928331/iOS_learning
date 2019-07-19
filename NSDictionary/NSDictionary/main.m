//
//  main.m
//  NSDictionary
//
//  Created by dxl on 2019/7/12.
//  Copyright © 2019年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         字典
         存储的内存不是连续的
         用key和value进行对应（键值）
         kvc 键值编码
         */
        
        NSDictionary *dict1 = [NSDictionary dictionaryWithObject:@"1" forKey:@"a"];
        NSLog(@"dict1 = %@",dict1);
        
        NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"2",@"3", nil] forKeys:[NSArray arrayWithObjects:@"a",@"b",@"c", nil]];
        NSLog(@"dict2 = %@",dict2);
        
        NSDictionary *dict3 = @{@"1":@"a",@"2":@"b",@"3":@"c"};//k在前v在后
        NSLog(@"dict3 = %@",dict3);
        
        int count = (int)[dict2 count];
        NSLog(@"count = %d",count);
        
        NSString *value = [dict2 valueForKey:@"b"];
        NSLog(@"value = %@",value);
        
        NSString *value2 = [dict2 objectForKey:@"b"];
        NSLog(@"value2 = %@",value2);
        
        NSArray *allValues = [dict2 allValues];
        NSLog(@"allValues = %@",allValues);
        
        NSArray *allKeys = [dict2 allKeys];
        NSLog(@"allKeys = %@",allKeys);
        
        NSArray *array = [dict2 objectsForKeys:[NSArray arrayWithObjects:@"a",@"b",@"d",nil] notFoundMarker:@"not found"];
        NSLog(@"array = %@",array);
        
        // 遍历字典
        for (NSString *key in dict2){
            NSLog(@"%@ = %@",key,[dict2 objectForKey:key]);
        }
        
        NSEnumerator *en = [dict2 keyEnumerator];
        id key = nil;
        while (key = [en nextObject]) {
            NSLog(@"key = %@",key);
        }
        
        dict2 enumerateKeysAndObjectsUsingBlock:<#^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop)block#>
     }
    return 0;
}
