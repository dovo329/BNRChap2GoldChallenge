//
//  main.m
//  BNRChap2GoldChallenge
//
//  Created by Douglas Voss on 3/30/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*BNRItem *testItem = [[BNRItem alloc] initWithItemName:@"Doug's awesome item"
              valueInDollars:45
         serialNumber:@"R2D2C3P0"];*/
        
        //NSMutableArray *testArr = [[NSMutableArray alloc] init];
        BNRItem *testItem = [BNRItem randomItem];
        
        /*NSLog(@"before testArr.count=%d", (int)[testArr count]);
        [testArr addObject:testItem];
        NSLog(@"after testArr.count=%d", (int)[testArr count]);*/
        
        //NSLog(@"%@", testItem);
        
        BNRContainer *testContainer = [[BNRContainer alloc] init];
        [testContainer addItem:[BNRItem randomItem]];
        [testContainer addItem:[BNRItem randomItem]];
        
        NSLog(@"testContainer has \n%@", testContainer);
    }
    return 0;
}
