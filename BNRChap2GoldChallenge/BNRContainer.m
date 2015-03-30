//
//  BNRContainer.m
//  BNRChap2GoldChallenge
//
//  Created by Douglas Voss on 3/30/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.subitems = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)setSubitems:(NSMutableArray *)subitemsInit
{
    _subitems = subitemsInit;
}

- (NSMutableArray *)subitems
{
    return _subitems;
}

- (void)addItem:(BNRItem *)item
{
    //NSLog(@"adding %@ to self.subitems", item);
    //NSLog(@"before [self.subitems count]=%d", (int)[self.subitems count]);
    [self.subitems addObject:item];
    //NSLog(@"after [self.subitems count]=%d", (int)[self.subitems count]);
}

- (NSString *)description
{
    //NSLog(@"[self.subitems count]=%d", (int)[self.subitems count]);
    NSMutableString *returnStr = [[NSMutableString alloc] init];
    
    for (int i=0; i<[self.subitems count]; i++)
    {
        //NSLog(@"before returnStr = %@", returnStr);
        [returnStr appendFormat:@"%@\n", self.subitems[i]];
        //NSLog(@"after returnStr = %@", returnStr);
        //NSLog(@"self.subitems[%d]=%@", i, self.subitems[i]);
    }
    return returnStr;
}

@end
