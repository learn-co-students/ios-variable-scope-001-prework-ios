//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"Everything cool?");
    return YES;
}

//Write the method body for arrayByAddingString:toArray: which takes a mutable array and a string as arguments. Have it return the array with the string added to it. However, in this challenge you must not modify the original array—as in, you'll need some way to create a copy of the argument array.
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array; {
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:(string)];

    return newArray;
}

//Write the method body for countOfUppercaseStringsInArray: which takes an array as an argument and returns an unsigned integer of the count of the strings in the array that are all uppercase. You’ll need to use a for loop to iterate over the array, but think about how the scope will work so that your count variable is available to be returned at the end of the method. Don't forget to read the tests, especially for this method!
-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array; {
    NSMutableArray *isUpperCase = [[NSMutableArray alloc]init];
    NSUInteger i = 0;
    
    for (i = 0; i < array.count; i++) {
        NSString *word = array[i];
        NSString *wordUC = [word uppercaseString];
        if ([word isEqualToString: wordUC]) {
            [isUpperCase addObject: word];
        }
    }
    
    NSUInteger newInteger = isUpperCase.count;
    return newInteger;
}
//Write the method body for removeAllObjectsFromArray:. This method should empty the argument array of its objects. Note how this method doesn't return anything; the passed array should be modified in-place.
-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    [array removeAllObjects];
}

@end
