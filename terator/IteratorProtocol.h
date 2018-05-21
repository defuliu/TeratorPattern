//
//  IteratorProtocol.h
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IteratorProtocol <NSObject>

//下一个对象
- (id)nextObject;

@end
