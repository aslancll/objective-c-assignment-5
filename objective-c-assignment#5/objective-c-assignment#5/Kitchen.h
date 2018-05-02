//
//  Kitchen.h
//  objective-c-assignment#5
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject


- (Pizza *)makePizzaWithSize:(NSString *)size toppings:(NSMutableArray *)toppings;

//- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
//
//+(Pizza *)largePepperoni;
//
//+(Pizza *)meatLoversWithSize:(PizzaSize)size;
//
@end
