//
//  main.m
//  PizzaRestaurant
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
        
            // And then send some message to the kitchen...
            NSString *sizeString = commandWords[0];
            
            /*
            Pizza *pizza = [Pizza largePepperoni];
            Pizza *pizzaFromKitchen = [restaurantKitchen makePizzaWithSize:[pizza sizeOfPizza] toppings:[pizza toppings]];
            */
            
            PizzaSize pizzaSize = [Pizza pizzaSizeEnumFromString:sizeString];
            
            NSMutableArray *toppingsArray = [commandWords mutableCopy];
            [toppingsArray removeObjectAtIndex:0];
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppingsArray];
            NSLog(@"%@", pizza);
        }

    }
    return 0;
}

