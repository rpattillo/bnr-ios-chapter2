//
//  ItemContainer.m
//  RandomItems
//
//  Created by Ricky Pattillo on 12/13/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import "ItemContainer.h"

@implementation ItemContainer

#pragma mark - Accessors

- (void)setSubItems:(NSArray *)items
{
   _subitems = items;
}


- (NSArray *)subItems
{
   return _subitems;
}


#pragma mark - Overrides


- (int)valueInDollars
{
   int total = _valueInDollars;
   for ( Item *item in self.subItems ) {
      total += item.valueInDollars;
   }
   
   return total;
}


- (NSString *)description
{
   NSMutableString *itemsDesciption = [[NSMutableString alloc] init];
   
   for ( Item *item in self.subItems ) {
      NSString *itemDesc = [NSString stringWithFormat:@"\t%@\n", item];
      [itemsDesciption appendString:itemDesc];
   }
   
   NSString *containerDescription = [NSString stringWithFormat:@"%@\n%@",
                                     [super description],
                                     itemsDesciption];
   
   return containerDescription;
   
}



@end
