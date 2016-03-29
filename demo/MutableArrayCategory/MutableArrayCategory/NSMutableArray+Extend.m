//
//  NSMutableArray+Extend.m
//  MutableArrayCategory
//
//  Created by Tin Blanc on 3/28/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "NSMutableArray+Extend.h"

@implementation NSMutableArray (Extend)

// hàm đảo ngược
-(void) reverse{
    if(self.count <2){
        return;
    } else {
        for (int i = 0; i < self.count / 2; i++) {
            // exchange: trao đổi obj đến objAtIndex
            [self exchangeObjectAtIndex:i withObjectAtIndex:self.count - i - 1];
        }
    }
}
@end
