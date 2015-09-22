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

//initiates new mutable array by copying original w/o altering original.
    NSMutableArray *newArrayWithStringAdded = [array mutableCopy];
// adds sting to new mutable array
    [newArrayWithStringAdded addObject:string];
//returns new mutable array.
    return newArrayWithStringAdded;

}


-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger numberOfUppercaseStrings = 0;
    
    for(NSUInteger i=0; i<[array count]; i++) {
        NSString *originalStringCopy = array[i];
        NSString *uppercaseStringCopy = [array[i] uppercaseString];
        
        if([originalStringCopy isEqualToString: uppercaseStringCopy]) {
            numberOfUppercaseStrings += 1;
        }
    }
    return numberOfUppercaseStrings;
}


-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    NSUInteger numberOfObjectsInArray = [array count];
    
    for(NSUInteger i = 0; i < numberOfObjectsInArray; i++) {
        [array removeObjectAtIndex:0];
    }
}

/*I kept failing a test with one object remaining in the array. So I added this extra code to remove it
 * I still think there is a probem with my loop, but at least the method passse the tests now.
 *Mark helped me on Learn chat.
 */




@end
