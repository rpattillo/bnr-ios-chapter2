//
//  ItemContainer.h
//  RandomItems
//
//  Created by Ricky Pattillo on 12/13/14.
//  Copyright (c) 2014 Ricky Pattillo. All rights reserved.
//

#import "Item.h"

@interface ItemContainer : Item
{
   NSArray *_subitems;
}

- (void)setSubItems:(NSArray *)items;
- (NSArray *)subItems;

@end
