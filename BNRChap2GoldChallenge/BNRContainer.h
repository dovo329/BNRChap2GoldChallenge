//
//  BNRContainer.h
//  BNRChap2GoldChallenge
//
//  Created by Douglas Voss on 3/30/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subitems;
}

- (instancetype)init;

- (void)setSubitems:(NSMutableArray *)subitemsInit;
- (NSMutableArray *)subitems;

- (void)addItem:(BNRItem *)item;

- (NSString *)description;

@end
