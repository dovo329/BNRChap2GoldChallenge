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
        
        NSMutableArray *testItemArray = [[NSMutableArray alloc] init];
        for (int i=0; i<5; i++) {
            [testItemArray addObject:[BNRItem randomItem]];
        }

        BNRContainer *testContainer =
            [[BNRContainer alloc]
             initWithContainerName:@"Doug's big bucket o' items"
             valueInDollars:32
             serialNumber:@"C3POR2D2"
             itemArray:testItemArray];
        
        NSMutableArray *mondoContainerItems = [[NSMutableArray alloc] init];
        [mondoContainerItems addObject:testContainer];
        
        BNRContainer *mondoContainer =
            [[BNRContainer alloc]
             initWithContainerName:@"Container of a container"
             valueInDollars:1
             serialNumber:@"1"
             itemArray:mondoContainerItems];
        
        NSLog(@"testContainer contains the following: \n%@", testContainer);
        NSLog(@"\n\n");
        NSLog(@"mondoContainer contains the following: \n%@", mondoContainer);
    }
    return 0;
}
