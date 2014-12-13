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
      
      for (int i = 0; i < 10; i++ ) {
         Item *item = [Item randomItem];
         [items addObject:item];
      }
      
      for (Item *item in items) {
         NSLog(@"%@", item);
      }
      
      
      Item *itemWithName = [[Item alloc] initWithItemName:@"A Name"];
      NSLog(@"%@", itemWithName);
      
      Item *itemWithNameSerial = [[Item alloc] initWithItemName:@"A Name" serialNumber:@"ABCD123"];
      NSLog( @"%@", itemWithNameSerial);
      
      Item *itemWithout = [[Item alloc] init];
      NSLog( @"%@", itemWithout);
      
      items = nil;
   }
    return 0;
}
