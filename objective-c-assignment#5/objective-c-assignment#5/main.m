//
//  main.m
//  objective-c-assignment#5
//
//  Created by Celal Aslan on 2018-04-26.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        @autoreleasepool {
            
            NSLog(@"Please pick your pizza size and toppings:");
            
            Kitchen *restaurantKitchen = [Kitchen new];
            
            while (TRUE) {
                // Loop forever
                
                NSLog(@"> ");
                char str[100];
                fgets (str, 100, stdin);
                
                NSString *inputString = [[NSString alloc] initWithUTF8String:str];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Input was %@", inputString);
                
                // Take the first word of the command as the size, and the rest as the toppings
                NSMutableArray *commandWords = [inputString componentsSeparatedByString:@" "];
                NSString *pizzaSize = [commandWords objectAtIndex:0];
                [commandWords removeObjectAtIndex:0];
                NSMutableArray *toppings = commandWords;
                
                // And then send some message to the kitchen...
                
                [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            }
            
        }
        
    }
    return 0;
}
