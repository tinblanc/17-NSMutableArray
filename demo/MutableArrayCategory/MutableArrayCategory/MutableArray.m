//
//  MutableArray.m
//  MutableArrayCategory
//
//  Created by Tin Blanc on 3/28/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "MutableArray.h"
#import "NSMutableArray+Extend.h"

@interface MutableArray ()

@end

@implementation MutableArray

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray* arr2 = [NSMutableArray arrayWithArray:@[@1, @2, @3, @4, @5]];
    [arr2 reverse];
    NSLog(@"%@",arr2);
    
    // Khai báo
    NSString* str = @"I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation.";
    NSCountedSet *set = [NSCountedSet new];
    
    // Đếm
    [str enumerateSubstringsInRange:NSMakeRange(0, [str length])
                               options:NSStringEnumerationByWords | NSStringEnumerationLocalized
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                [set addObject:substring];
                            }];
    
    NSLog(@"%@", set);
}



@end
