//
//  LinkedList.m
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headNode = [Node new];
    }
    return self;
}

- (void)addData:(id)data
{
    //1.头节点为空,就添加
    if (self.headNode == nil) {
        self.headNode = [Node nodeData:data];
    }
    else {
        [self addData:data node:self.headNode];
    }
    
    //数量的增加
    self.numberOfNode ++;
}

//2.有头节点了，就插入下一个节点
-  (void)addData:(id)data node:(Node *)node
{
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeData:data];
    } else {
        //当下一个节点也有值了，进行递归调用
        [self addData:data node:node.nextNode];
    }
    
    
}

@end
