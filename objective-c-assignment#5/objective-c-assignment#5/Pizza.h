//
//  Pizza.h
//  objective-c-assignment#5
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

@property NSString *size;
@property NSArray *toppings;

//typedef enum {
//    PizzaSizeSmall,
//    PizzaSizeMedium,
//    PizzaSizeLarge
//} PizzaSize;

-(NSString *)getSize;
-(NSArray *)getToppings;

@end
