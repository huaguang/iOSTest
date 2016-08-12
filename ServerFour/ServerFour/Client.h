//
//  Client.h
//  ServerFour
//
//  Created by guanghzhang on 16/8/12.
//  Copyright © 2016年 guanghzhang. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Client : NSObject{
    NSOutputStream *outputStream;
    NSInputStream *inputStream;
    
    int sock_fd;
}
@property(nonatomic,retain) NSOutputStream *outputStream;
@property(nonatomic,retain) NSInputStream *inputStream;

@property(nonatomic,assign) int sock_fd;
@end
