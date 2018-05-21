//
//  Node.m
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeData:(id)data
{
    Node *node = [[self alloc] init];
    node.data = data;
    
    return node;
}

@end
