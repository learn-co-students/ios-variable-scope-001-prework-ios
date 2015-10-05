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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    
    NSMutableArray * arrayC =  [array mutableCopy];
    [arrayC addObject:string];
    return arrayC;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSCharacterSet * lowerCaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
    NSUInteger x = 0;
    for ( unsigned i = 0 ; i < array.count ; i++){

        if ([array[i] rangeOfCharacterFromSet:lowerCaseSet].location == NSNotFound){
            x++; // upper case
        }
        
    
    }
    return x;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

@end
