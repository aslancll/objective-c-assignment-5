//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef enum : NSUInteger {
//    Small,
//    Medium,
//    Large,
//} PizzaSize;

typedef NS_ENUM(NSUInteger, PizzaSize) {
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

//@property (nonatomic, assign, readonly) PizzaSize pizzaSize;

- (instancetype)initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray*)toppings;

- (PizzaSize)sizeOfPizza;
- (NSArray *)toppings;

+ (PizzaSize)pizzaSizeEnumFromString:(NSString *)pizzaSizeString;

+ (Pizza *)largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;

@end







