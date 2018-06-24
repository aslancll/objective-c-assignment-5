//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "Manager.h"
#import "Pizza.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping {
  if ([topping containsObject:@"anchovies"]) {
    return NO; }
  return YES;}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return NO;
}


@end
