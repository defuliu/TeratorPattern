//
//  LinkedIterator.h
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "IteratorProtocol.h"

@interface LinkedIterator : NSObject <IteratorProtocol>

+ (instancetype)linkedObjectIterator:(LinkedList *)linkList;

@end
