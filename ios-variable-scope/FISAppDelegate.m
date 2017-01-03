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

/*ar
 
 * Write your method definitions here.
 
 */


-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayWithStringAdded = [array mutableCopy];
    
    [arrayWithStringAdded addObject: string];
    
    return arrayWithStringAdded;
    
    }




-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *uppercaseArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [array count]; i++ ) {
        if ([[array objectAtIndex:i] isEqualToString:[[array objectAtIndex:i] uppercaseString]]) {
            [uppercaseArray addObject:[[array objectAtIndex:i] uppercaseString]];
        }
    
        }
    return [uppercaseArray count];
}
            




-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    
 //     can not use this way since count is changing
//    for (NSUInteger i = 0; i < [array count]; i++) {
//        [array removeObjectAtIndex:i];
//    }
    [array removeAllObjects];

        
}


@end
