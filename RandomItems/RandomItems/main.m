//
//  main.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
   @autoreleasepool {
      NSMutableArray *items = [[NSMutableArray alloc] init];
      
      [items addObject:@"One"];
      [items addObject:@"Two"];
      [items addObject:@"Three"];
      
      [items insertObject:@"Zero" atIndex:0];
      
      for ( NSString *item in items ) {
         NSLog(@"%@", item);
      }
      
      Item *item = [[Item alloc] init];
      
      item.itemName = @"Red Sofa";
      item.serialNumber = @"A1B2C";
      item.valueInDollars = 100;
      
      NSLog( @"%@", item );
      
      items = nil;
   }
    return 0;
}
