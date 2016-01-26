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
    
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{

    NSUInteger counter = 0;
    
    //lowerCaseSet includes all lower case letters
    NSCharacterSet *lowerCaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
    
    for(NSUInteger i = 0; i < [array count]; i++){
        
        //check if no elements of lowerCaseSet are inside the array[i]
        if ([array[i] rangeOfCharacterFromSet:lowerCaseSet].location == NSNotFound){
        
        //this doesnt work
        //if(array[i] == [array[i] uppercaseString]){
            
            counter += 1;
        }
    }
    return counter;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    
    [array removeAllObjects];
}

@end
