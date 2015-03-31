//
//  BNRContainer.m
//  BNRChap2GoldChallenge
//
//  Created by Douglas Voss on 3/30/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithContainerName:(NSString *)name
                  valueInDollars:(NSInteger)value
                    serialNumber:(NSString *)sNumber
                       itemArray:(NSMutableArray *)itemArray
{
    self = [super init];
    if (self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = sNumber;
        _dateCreated = [[NSDate alloc] init];
        _subitems = itemArray;
    }
    return self;
}

- (instancetype)initWithContainerName:(NSString *)name
                  valueInDollars:(NSInteger)value
                    serialNumber:(NSString *)sNumber
{
    return [self initWithContainerName:name
                        valueInDollars:value
                          serialNumber:sNumber
                             itemArray:[[NSMutableArray alloc] init]];
}

- (instancetype)initWithContainerName:(NSString *)name
                  valueInDollars:(NSInteger)value
{
    return [self initWithContainerName:name
                        valueInDollars:value
                          serialNumber:@""
                             itemArray:[[NSMutableArray alloc] init]];
}

- (instancetype)initWithContainerName:(NSString *)name
                    serialNumber:(NSString *)sNumber
{
    return [self initWithContainerName:name
                        valueInDollars:0
                          serialNumber:sNumber
                             itemArray:[[NSMutableArray alloc] init]];
}

- (instancetype)initWithContainerName:(NSString *)name
{
    return [self initWithContainerName:name
                        valueInDollars:0
                          serialNumber:@""
                             itemArray:[[NSMutableArray alloc] init]];
}


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
    NSMutableString *subItemsStr = [[NSMutableString alloc] init];
    NSInteger totalWorth = self.valueInDollars;
    
    for (int i=0; i<[self.subitems count]; i++)
    {
        totalWorth += (int)((BNRItem *)self.subitems[i]).valueInDollars;
        [subItemsStr appendFormat:@"%@\n", self.subitems[i]];
    }
    
    NSMutableString *returnStr = [[NSMutableString alloc] init];
    [returnStr appendFormat:@"Container %@ (%@): Worth $%d, Total worth $%d, recorded on %@\n", self.itemName, self.serialNumber, (int)self.valueInDollars, (int)totalWorth, self.dateCreated];
    
    [returnStr appendString:subItemsStr];
    return returnStr;
}

@end
