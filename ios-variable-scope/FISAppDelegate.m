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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
  
    NSUInteger countOfUppercaseStrings = 0;
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";", @"'", @" " ];
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        NSString *withoutSpacesOrPunctuations = array[i];
        
        for (NSUInteger j = 0; j < [punctuations count]; j++) {
            
            withoutSpacesOrPunctuations = [withoutSpacesOrPunctuations stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
        }
        
        NSString *withoutSOPCapitalized = [withoutSpacesOrPunctuations uppercaseString];
        
        if ([withoutSOPCapitalized isEqualToString:withoutSpacesOrPunctuations]) {
            countOfUppercaseStrings++;
        }
    }
    
    return countOfUppercaseStrings;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
        [array removeAllObjects];
    
}

@end
