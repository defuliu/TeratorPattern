//
//  LinkedList.h
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject


/** 头节点*/
@property (nonatomic, strong)Node *headNode;

/**链表中的节点数*/
@property (nonatomic, assign)NSInteger numberOfNode;

/**节点上的数据*/
- (void)addData:(id)data;

@end
