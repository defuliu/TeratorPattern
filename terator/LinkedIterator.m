//
//  LinkedIterator.m
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "LinkedIterator.h"

@interface LinkedIterator ()

@property (nonatomic, strong)LinkedList *linkList;

@property (nonatomic, strong)Node *currentNode;

@end

@implementation LinkedIterator

+ (instancetype)linkedObjectIterator:(LinkedList *)linkList
{
    
    //1.初始化迭代器
    LinkedIterator *linkedIterator = [[LinkedIterator alloc] init];
    
    //2.保存链表数据
    linkedIterator.linkList = linkList;
    
    linkedIterator.currentNode = linkList.headNode;
    
    return linkedIterator;
}

- (id)nextObject
{
    self.currentNode = self.currentNode.nextNode;
    
    return self.currentNode;
}

@end
