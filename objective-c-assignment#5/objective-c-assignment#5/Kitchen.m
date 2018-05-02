//
//  Kitchen.m
//  objective-c-assignment#5
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

//- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
//{
//
//
//
//}
//+(Pizza *)largePepperoni {
//
//}
//
//+(Pizza *)meatLoversWithSize:(PizzaSize)size {
//
//}

- (Pizza *)makePizzaWithSize:(NSString *)size toppings:(NSMutableArray *)toppings {
    Pizza *pizza = [[Pizza alloc] init];
    pizza.size = size;
    pizza.toppings = toppings;
    NSLog(@"Your pizza: Size: %@, Toppings: %@", pizza.size, pizza.toppings);
    return pizza;
}


@end


