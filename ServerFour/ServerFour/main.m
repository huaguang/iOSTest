//
//  main.m
//  ServerFour
//
//  Created by guanghzhang on 16/8/12.
//  Copyright © 2016年 guanghzhang. All rights reserved.
//
# 

#import <Foundation/Foundation.h>
#import "ChatServer.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ChatServer *chatServer = [[ChatServer alloc] init];
        [chatServer run:NULL];
        NSLog(@"Hello, World!");
    }
    return 0;
}
