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
 
    NSMutableArray * arrayCopy = [array mutableCopy]; // works with mutable array to mutable array?
    [arrayCopy addObject:string];
    
    return arrayCopy;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger countOfUppercaseStrings = 0;
   
    for (NSUInteger i = 0; i<array.count; i++) {
        NSString *originalString = array[i];
        NSString *uppercaseString = [array[i] uppercaseString];
        if ( [originalString isEqualToString:uppercaseString] ) {
            countOfUppercaseStrings++;
        }
        //check to see if they have overloaded = sign operators, aka full copies for strings.
    }
    
    return countOfUppercaseStrings;
}
-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
        [array removeAllObjects];
}


@end
