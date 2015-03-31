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
        
        
        NSMutableArray *testItemArray2 = [[NSMutableArray alloc] init];
        for (int i=0; i<4; i++) {
            [testItemArray2 addObject:[BNRItem randomItem]];
        }

        BNRContainer *testContainer2 =
            [[BNRContainer alloc]
             initWithContainerName:@"Doug's backpack of mystery"
             valueInDollars:32
             serialNumber:@"90210"
             itemArray:testItemArray2];
        
        
        
        NSMutableArray *mondoContainerItems = [[NSMutableArray alloc] init];
        [mondoContainerItems addObject:testContainer];
        [mondoContainerItems addObject:testContainer2];
        
        BNRContainer *mondoContainer =
            [[BNRContainer alloc]
             initWithContainerName:@"Container multiple containers"
             valueInDollars:1
             serialNumber:@"1"
             itemArray:mondoContainerItems];
        
        NSLog(@"testContainer contains the following: \n%@", testContainer);
        NSLog(@"\n\n");
        NSLog(@"testContainer2 contains the following: \n%@", testContainer2);
        NSLog(@"\n\n");
        NSLog(@"mondoContainer contains the following: \n%@", mondoContainer);
    }
    return 0;
}
