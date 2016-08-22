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
 
 */

/// Add a string to an array

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;{
    
    NSArray * Array2 = [array copy];
    
    NSArray * Array2StringAdded = [Array2 arrayByAddingObject:string];
    
    NSMutableArray * mArray2StringAdded = [Array2StringAdded mutableCopy];
    
    return mArray2StringAdded;
    
    
}


// For every item in the array make an uppercase version then check it matches the original, if so count it

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;{
    
    
    unsigned long upperCaseCounter = 0;
    
    unsigned long i;
    
    for (i = 0; i < [array count]; i++)
    {
       
        NSString * upperCaseVersion = [array[i] uppercaseString];
        
        NSString * original = array[i];
        
 BOOL upper = [original isEqualToString:upperCaseVersion];
        
        if (upper) {
            
            upperCaseCounter++;
            
        } else {
            
            NSLog(@"Nope");
            
        }
        
        
    }
    
   
    return upperCaseCounter;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    
    [array removeAllObjects];
    
    
}




@end
