//
//  ViewController.m
//  terator
//
//  Created by 刘德福 on 2018/5/15.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "ViewController.h"
#import "LinkedList.h"
#import "LinkedIterator.h"

@interface ViewController ()
@property (nonatomic, strong)LinkedList *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //数组集合
    NSArray *data = @[@"1",@"2",@"3",@"4"];
    
    //2.创建迭代器
    NSEnumerator *enumerator = [data objectEnumerator];
    
    //3.访问每个元素
    id obj = nil;
    while (obj = [enumerator nextObject]) {
        NSLog(@"-----:%@",obj);
    }
    
    //1.创建集合类
    self.list = [[LinkedList alloc] init];
    
    [self.list addData:@"A"];
    [self.list addData:@"B"];
    [self.list addData:@"C"];
    
    //2.迭代器的创建
    LinkedIterator *linkedIterator = [LinkedIterator linkedObjectIterator:self.list];
    
    //3.访问每个元素
    Node *node = nil;
  
    while (node = [linkedIterator nextObject]) {
        
        
        
        NSLog(@"----:%@",node.data);
    }
    
}


@end
