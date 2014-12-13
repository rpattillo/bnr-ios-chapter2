//
//  main.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/11/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "ItemContainer.h"

int main(int argc, const char * argv[]) {
   @autoreleasepool {
      
      NSMutableArray *containers = [[NSMutableArray alloc] init];
      
      for (int j = 0; j < 10; j++ ) {
         ItemContainer *cheapContainer = [[ItemContainer alloc] init];
         cheapContainer.valueInDollars = 10;

         NSMutableArray *items = [[NSMutableArray alloc] init];
         for (int i = 0; i < 10; i++ ) {
            Item *item = [Item randomItem];
            item.valueInDollars = 1;
            [items addObject:item];
         }

         cheapContainer.subItems = items;
         [containers addObject:cheapContainer];
      }
      
      ItemContainer *expensiveContainer = [[ItemContainer alloc] init];
      expensiveContainer.valueInDollars = 100;
      expensiveContainer.subItems = containers;
  
      NSLog(@"%@", expensiveContainer);
      
   }
    return 0;
}
