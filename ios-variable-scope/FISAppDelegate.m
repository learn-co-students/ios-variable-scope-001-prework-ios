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
    return YES;
}

/*
 * Write your method definitions here.
 
 -(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;
 
 -(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;
 
 -(void)removeAllObjectsFromArray:(NSMutableArray *)array;
 */

/**
@param NSMutableArray original array
@param NSString string to add to array
@return an array containing all the contents of the original array with string added to it

* Write your method definitions here.
Note: Add the string to the contents of the mutable array w/o modifying the original array
**/

-(NSMutableArray*)arrayByAddingString:(NSString*)string toArray:(NSMutableArray*)array { // "arrayByAddingString:toArray" is the name of method. So far "string" should be added to "array" and returns an NSMutableArray.
    
    NSMutableArray *newArray = [array mutableCopy]; // "array" is copied to "newArray"
    [newArray addObject:string]; // adding the object "string" to the temproary array "newArray" which is a copy of "array"
    return newArray; // "newArray" will be "array" (the original) with the value of the "string" added to it.
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray*)array{ // Returning an NSUInteger and passing an NSarray call "array"
    
    NSUInteger countOfUppercaseStrings = 0; // Setting the NSUInteger "countOfUppercaseStringInArray" to 0
    for (NSUInteger i = 0; i < [array count]; i++) { // "a for loop", NSUInteger "i" is set equal to 0; As long as "i" is less than the size of the array then continue; and then increment "i" by 1.
        if([array[i] isEqualToString:[array[i] uppercaseString]]) { // calling a method - checking to see if the string in whatever postion (i'th postion) of the array is equal to its uppercase counter part. If it is equal it's uppercase.
            countOfUppercaseStrings++; // The NSUInteger "countOfUppercaseStrings" is equal to itself plus 1. (if 0 then turns to 1, if 1 then turns to 2, etc.)
        }
    }
    
    return countOfUppercaseStrings; // It returns "countOFUppercaseStrings" which returns the number of upper case strings detected in the array.
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array { // You know that nothing other than potentially an NSlog (which isn't actually a return) will be returned because of "void". Passing an NSMutableArray called "array" which will have elements removed at the end of this method.
    if (array && [array count] > 0) { // if array exsists with a size greater than 0
        [array removeAllObjects]; // then remove everything.
    }
}

@end
