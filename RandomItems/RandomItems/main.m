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
      
      Item *nonexistent = items[10];
      
      items = nil;
   }
    return 0;
}
