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

-(NSArray *)arrayByAddingString:(NSString *)string toArray:(NSArray *)array {

    NSMutableArray *newArray = [NSMutableArray arrayWithArray:array];
    
    [newArray addObject:string];
    return newArray;
}

-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array {

    NSUInteger capCount = 0;
    BOOL isUpperCase;
    NSString *arrayItem = @"";
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        arrayItem = array[i];
        isUpperCase= [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:[arrayItem characterAtIndex:i]];
        
        if (isUpperCase) {
         
            capCount++;
        }
    }
    
    return capCount;
}


-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *upperCase = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        NSString *arrayItem = array[i];
        NSString *upperCaseArrayItem = [arrayItem uppercaseString];
        
        if ([arrayItem isEqualToString:upperCaseArrayItem]) {
            
            [upperCase addObject: upperCaseArrayItem];
        }
        
    }
    
    return upperCase.count;
}



-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    
    [array removeAllObjects];
    
}

@end
