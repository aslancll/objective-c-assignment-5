//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

/// Part 1
@class Kitchen;
@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end



@interface Kitchen : NSObject

/// Part 2

@property (nonatomic, weak) id <KitchenDelegate>delegate; // reference to an object that will promise to implement kitchen delegate protocol

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end
